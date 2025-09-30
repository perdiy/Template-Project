import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsAndConditionsPage extends StatefulWidget {
  const TermsAndConditionsPage({super.key});

  @override
  State<TermsAndConditionsPage> createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
  late WebViewController controller;
  bool _isLoading = true;
  bool _hasError = false;
  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            setState(() {
              _isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              _isLoading = false;
            });
          },
          onWebResourceError: (WebResourceError error) {
            setState(() {
              _hasError = true;
              _isLoading = false;
            });
          },
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..setBackgroundColor(Palette.white)
      ..loadRequest(
        method: LoadRequestMethod.get,
        headers: {'x-api-key': const String.fromEnvironment('API_KEY')},
        Uri.parse(
          '${const String.fromEnvironment('BASE_URL')}/term-condition?company=fin',
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: MyAppBar(
        title: Strings.of(context)!.termAndCondition,
        elevation: 2,
      ).call(context),
      child: Stack(
        children: [
          if (!_hasError) WebViewWidget(controller: controller),
          if (_isLoading) const Center(child: Loading()),
        ],
      ),
    );
  }
}
