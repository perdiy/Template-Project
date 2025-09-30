import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  // Controller
  final _conOldPassword = TextEditingController();
  final _conNewPassword = TextEditingController();
  final _conConfirmPassword = TextEditingController();

  bool _isOldPasswordVisible = false;
  bool _isNewPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  // Focus Node
  final _fnOldPassword = FocusNode();
  final _fnNewPassword = FocusNode();
  final _fnConfirmPassword = FocusNode();

  // Global key
  final _formValidator = <String, bool>{};

  @override
  void dispose() {
    _conOldPassword.dispose();
    _conNewPassword.dispose();
    _conConfirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: MyAppBar(
        title: Strings.of(context)!.changePassword,
        elevation: 2,
      ).call(context),
      child: BlocListener<ChangePasswordCubit, ChangePasswordState>(
        listener: (_, state) {
          state.whenOrNull(
            loading: () => context.show(),
            success: (data) {
              context.dismiss();
              Strings.of(
                context,
              )!.changePasswordSuccess.toToastSuccess(context);

              TextInput.finishAutofillContext();
              context.pushReplacementNamed(Routes.profile.name);
            },
            failure: (message) {
              context.dismiss();
              message.toToastError(context);
            },
          );
        },
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.all(Dimens.space24),
          child: AutofillGroup(
            child: Column(children: [_changePasswordForm()]),
          ),
        ),
      ),
    );
  }

  Widget _changePasswordForm() => BlocBuilder<ReloadFormCubit, ReloadFormState>(
    builder: (_, state) {
      return Column(
        children: [
          TextF(
            isRequired: true,
            border: false,
            backgroundColor: Palette.muted,
            autoFillHints: const [AutofillHints.password],
            key: const Key("oldPassword"),
            focusNode: _fnOldPassword,
            textInputAction: TextInputAction.done,
            controller: _conOldPassword,
            keyboardType: TextInputType.text,
            obscureText: !_isOldPasswordVisible,
            hint: '••••••••••••',
            label: Strings.of(context)!.currentPassword,
            suffixIcon: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                _isOldPasswordVisible = !_isOldPasswordVisible;
                context.read<ReloadFormCubit>().reload();
              },
              icon: Icon(
                _isOldPasswordVisible ? Icons.visibility_off : Icons.visibility,
                color: Palette.foreground.withAlpha(60),
              ),
            ),
            isValid: _formValidator.putIfAbsent("oldPassword", () => false),
            validatorListener: (String value) {
              _formValidator["oldPassword"] = value.length > 5;
              context.read<ReloadFormCubit>().reload();
            },
            errorMessage: Strings.of(context)!.errorPasswordLength,
          ),
          SizedBox(height: Dimens.space12),
          TextF(
            isRequired: true,
            border: false,
            backgroundColor: Palette.muted,
            autoFillHints: const [AutofillHints.password],
            key: const Key("newPassword"),
            focusNode: _fnNewPassword,
            textInputAction: TextInputAction.done,
            controller: _conNewPassword,
            keyboardType: TextInputType.text,
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
                color: Palette.foreground.withAlpha(60),
              ),
            ),
            isValid: _formValidator.putIfAbsent("newPassword", () => false),
            validatorListener: (String value) {
              _formValidator["newPassword"] = value.length > 5;
              context.read<ReloadFormCubit>().reload();
            },
            errorMessage: Strings.of(context)!.errorPasswordLength,
          ),
          SizedBox(height: Dimens.space12),
          TextF(
            isRequired: true,
            border: false,
            backgroundColor: Palette.muted,
            autoFillHints: const [AutofillHints.password],
            key: const Key("confirmPassword"),
            focusNode: _fnConfirmPassword,
            textInputAction: TextInputAction.done,
            controller: _conConfirmPassword,
            keyboardType: TextInputType.text,
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
                color: Palette.foreground.withAlpha(60),
              ),
            ),
            isValid: _formValidator.putIfAbsent("confirmPassword", () => false),
            validatorListener: (String value) {
              _formValidator["confirmPassword"] =
                  _conConfirmPassword.text == _conNewPassword.text;
              context.read<ReloadFormCubit>().reload();
            },
            errorMessage: Strings.of(context)!.errorPasswordNotMatch,
          ),
          SizedBox(height: Dimens.space24),
          Button(
            title: Strings.of(context)!.save,
            width: double.maxFinite,
            onPressed: _formValidator.validate()
                ? () => context.read<ChangePasswordCubit>().changePassword(
                    ChangePasswordParams(
                      newPassword: _conNewPassword.text,
                      oldPassword: _conOldPassword.text,
                    ),
                  )
                : null,
          ),
        ],
      );
    },
  );
}
