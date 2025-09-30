import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

class RequestResetPasswordPage extends StatefulWidget {
  const RequestResetPasswordPage({super.key});

  @override
  State<RequestResetPasswordPage> createState() =>
      _RequestResetPasswordPageState();
}

class _RequestResetPasswordPageState extends State<RequestResetPasswordPage>
    with MainBoxMixin {
  // Controller
  final _conEmail = TextEditingController();

  // Focus Node
  final _fnEmail = FocusNode();

  // Global key
  final _formValidator = <String, bool>{};

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: MyAppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => context.back(),
          icon: const Icon(Icons.arrow_back_ios_new, color: Palette.white),
        ),
      ).call(context),
      backgroundColor: Theme.of(context).primaryColor,
      child: BlocListener<RequestResetPasswordCubit, RequestResetPasswordState>(
        listener: (_, state) {
          state.whenOrNull(
            loading: () => context.show(),
            success: (data) {
              context.dismiss();
              Strings.of(context)!.descResetLink.toToastSuccess(context);

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
                        Strings.of(context)!.resetPassword,
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontWeight: semiBold),
                      ),
                      SpacerV(value: Dimens.space6),
                      Text(Strings.of(context)!.descResetPassword),
                      SpacerV(value: Dimens.space24),
                      _requestResetPasswordForm(),
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

  Widget _requestResetPasswordForm() =>
      BlocBuilder<ReloadFormCubit, ReloadFormState>(
        builder: (_, state) {
          return Column(
            children: [
              TextF(
                autoFillHints: const [AutofillHints.email],
                key: const Key("email"),
                focusNode: _fnEmail,
                textInputAction: TextInputAction.next,
                controller: _conEmail,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(
                  Icons.alternate_email,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                hint: "user@finlogistics.co.id",
                label: Strings.of(context)!.email,
                isValid: _formValidator.putIfAbsent("email", () => false),
                validatorListener: (String value) {
                  _formValidator["email"] = value.isValidEmail();
                  context.read<ReloadFormCubit>().reload();
                },
                errorMessage: Strings.of(context)!.errorInvalidEmail,
              ),
              SpacerV(value: Dimens.space24),
              Button(
                width: double.maxFinite,
                title: Strings.of(context)!.sendInstruction,
                onPressed: _formValidator.validate()
                    ? () => context
                          .read<RequestResetPasswordCubit>()
                          .requestResetPassword(
                            RequestResetPasswordParams(email: _conEmail.text),
                          )
                    : null,
              ),
            ],
          );
        },
      );
}
