import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:operation/core/core.dart';
// import 'package:operation/dependencies_injection.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with MainBoxMixin {
  // late final ActiveTheme _selectedTheme = sl<SettingsCubit>().getActiveTheme();

  late final List<DataHelper> _listLanguage = [
    DataHelper(title: Constants.get.english, type: "en"),
    DataHelper(title: Constants.get.bahasa, type: "id"),
  ];
  late DataHelper _selectedLanguage =
      (getData(MainBoxKeys.locale) ?? "en") == "en"
      ? _listLanguage[0]
      : _listLanguage[1];

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: MyAppBar(
        title: Strings.of(context)!.settings,
        elevation: 2,
      ).call(context),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(Dimens.space16),
          child: Column(
            children: [
              // DropDown<ActiveTheme>(
              //   key: const Key("dropdown_theme"),
              //   label: Strings.of(context)!.chooseTheme,
              //   value: _selectedTheme,
              //   prefixIcon: const Icon(Icons.light),
              //   items: ActiveTheme.values
              //       .map(
              //         (data) => DropdownMenuItem(
              //           value: data,
              //           child: Text(
              //             _getThemeName(data, context),
              //             style: Theme.of(context).textTheme.bodyMedium,
              //           ),
              //         ),
              //       )
              //       .toList(),
              //   onChanged: (value) {
              //     /// Reload theme
              //     context
              //         .read<SettingsCubit>()
              //         .updateTheme(value ?? ActiveTheme.system);
              //   },
              // ),

              /// Language
              DropDown<DataHelper>(
                key: const Key("dropdown_language"),
                label: Strings.of(context)!.chooseLanguage,
                value: _selectedLanguage,
                prefixIcon: const Icon(Icons.language_outlined),
                items: _listLanguage
                    .map(
                      (data) => DropdownMenuItem(
                        value: data,
                        child: Text(
                          data.title ?? "-",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (DataHelper? value) {
                  _selectedLanguage = value ?? _listLanguage[0];

                  /// Reload theme
                  if (!mounted) return;
                  context.read<SettingsCubit>().updateLanguage(
                    value?.type ?? "en",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // String _getThemeName(ActiveTheme activeTheme, BuildContext context) {
  //   if (activeTheme == ActiveTheme.system) {
  //     return Strings.of(context)!.themeSystem;
  //   } else if (activeTheme == ActiveTheme.dark) {
  //     return Strings.of(context)!.themeDark;
  //   } else {
  //     return Strings.of(context)!.themeLight;
  //   }
  // }
}
