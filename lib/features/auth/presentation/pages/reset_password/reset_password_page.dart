import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

class ResetPasswordPage extends StatefulWidget {
  final String? token;

  const ResetPasswordPage({super.key, this.token});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage>
    with MainBoxMixin {
  // Controller
  final _conNewPassword = TextEditingController();
  final _conConfirmPassword = TextEditingController();

  bool _isNewPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  // Focus Node
  final _fnNewPassword = FocusNode();
  final _fnConfirmPassword = FocusNode();

  // Global key
  final _formValidator = <String, bool>{};

  @override
  void initState() {
    addData(MainBoxKeys.tokenLinkId, widget.token);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      avoidBottomInset: false,
      appBar: MyAppBar(
        leading: IconButton(
          onPressed: () => context.goNamed(Routes.root.name),
          icon: const Icon(Icons.arrow_back_ios_new, color: Palette.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ).call(context),
      backgroundColor: Theme.of(context).primaryColor,
      child: BlocListener<ResetPasswordCubit, ResetPasswordState>(
        listener: (_, state) {
          state.whenOrNull(
            loading: () => context.show(),
            success: (data) {
              addData(MainBoxKeys.tokenLinkId, null);
              context.dismiss();
              showModalBottomSheet(
                context: context,
                builder: (_) => BottomsheetResetPasswordSuccess(),
              );

              TextInput.finishAutofillContext();
            },
            failure: (message) {
              context.dismiss();
              message.toToastError(context);
            },
          );
        },
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset(Images.imgAdcorp, width: Dimens.logo),
              ),
            ),
            Container(
              padding: EdgeInsets.all(Dimens.space24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimens.space24),
                  topRight: Radius.circular(Dimens.space24),
                ),
                color: Palette.white,
              ),
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: AutofillGroup(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.of(context)!.createNewPassword,
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontWeight: semiBold),
                      ),
                      SpacerV(value: Dimens.space6),
                      Text(Strings.of(context)!.descNewPassword),
                      SpacerV(value: Dimens.space24),
                      _createPasswordForm(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createPasswordForm() => BlocBuilder<ReloadFormCubit, ReloadFormState>(
    builder: (_, state) {
      return Column(
        children: [
          TextF(
            autoFillHints: const [AutofillHints.password],
            key: const Key("new_password"),
            focusNode: _fnNewPassword,
            textInputAction: TextInputAction.done,
            controller: _conNewPassword,
            keyboardType: TextInputType.text,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
            obscureText: !_isNewPasswordVisible,
            hint: '••••••••••••',
            label: Strings.of(context)!.newPassword,
            suffixIcon: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                _isNewPasswordVisible = !_isNewPasswordVisible;
                context.read<ReloadFormCubit>().reload();
              },
              icon: Icon(
                _isNewPasswordVisible ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            isValid: _formValidator.putIfAbsent("password", () => false),
            validatorListener: (String value) {
              _formValidator["password"] = value.length > 5;
              context.read<ReloadFormCubit>().reload();
            },
            errorMessage: Strings.of(context)!.errorPasswordLength,
          ),
          SpacerV(value: Dimens.space16),
          TextF(
            autoFillHints: const [AutofillHints.password],
            key: const Key("confirm_password"),
            focusNode: _fnConfirmPassword,
            textInputAction: TextInputAction.done,
            controller: _conConfirmPassword,
            keyboardType: TextInputType.text,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
            obscureText: !_isConfirmPasswordVisible,
            hint: '••••••••••••',
            label: Strings.of(context)!.confirmPassword,
            suffixIcon: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                context.read<ReloadFormCubit>().reload();
              },
              icon: Icon(
                _isConfirmPasswordVisible
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            isValid: _formValidator.putIfAbsent("password", () => false),
            validatorListener: (String value) {
              _formValidator["password"] = value == _conNewPassword.text;
              context.read<ReloadFormCubit>().reload();
            },
            errorMessage: Strings.of(context)!.errorPasswordNotMatch,
          ),
          SpacerV(value: Dimens.space24),
          Button(
            width: double.maxFinite,
            title: Strings.of(context)!.resetPassword,
            onPressed: _formValidator.validate()
                ? () => context.read<ResetPasswordCubit>().resetPassword(
                    ResetPasswordParams(newPassword: _conNewPassword.text),
                  )
                : null,
          ),
        ],
      );
    },
  );
}
