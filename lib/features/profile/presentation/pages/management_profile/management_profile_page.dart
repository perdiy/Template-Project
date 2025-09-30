import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

class ManagementProfile extends StatefulWidget {
  final Profile profile;

  const ManagementProfile({super.key, required this.profile});

  @override
  State<ManagementProfile> createState() => _ManagementProfileState();
}

class _ManagementProfileState extends State<ManagementProfile> {
  Gender? _selectedGender;
  MaritalStatus? _selectedMaritalStatus = MaritalStatus.single;
  Religion? _selectedReligion = Religion.islam;
  BloodType? _selectedBloodType = BloodType.o;
  String? selectedBloodType;
  String? imageUrl;
  bool isResidentialAddress = false;

  // Controller
  final _conFirstName = TextEditingController();
  final _conLastName = TextEditingController();
  final _conNationalId = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPlaceOfBirth = TextEditingController();
  final _conCitizenIdAddress = TextEditingController();
  final _conResidentialAddress = TextEditingController();
  final _conDateOfBirth = TextEditingController();

  // Focus Node
  final _fnFirstName = FocusNode();
  final _fnLastName = FocusNode();
  final _fnNationalId = FocusNode();
  final _fnEmail = FocusNode();
  final _fnPlaceOfBirth = FocusNode();
  final _fnCitizenIdAddress = FocusNode();
  final _fnResidentialAddress = FocusNode();
  final _fnDateOfBirth = FocusNode();

  // Global key
  final _formValidator = <String, bool>{};

  @override
  void initState() {
    super.initState();
    imageUrl = widget.profile.userAccount?.profilePic;
    _conFirstName.text = widget.profile.firstname ?? '';
    _conLastName.text = widget.profile.lastname ?? '';
    _conEmail.text = widget.profile.email ?? '';
    _conCitizenIdAddress.text = widget.profile.citizenAddress ?? '';
    _conPlaceOfBirth.text = widget.profile.placebirth ?? '';
    _conDateOfBirth.text = widget.profile.birthdate ?? '';
    _conNationalId.text = widget.profile.nik ?? '';
    _conResidentialAddress.text = widget.profile.residentialAddress ?? '';
    _selectedGender = _parseGender(widget.profile.gender);

    _selectedMaritalStatus = MaritalStatus.values.firstWhere(
      (e) =>
          e.toString().split('.').last.toLowerCase() ==
          (widget.profile.maritalStatus ?? '').toLowerCase(),
      orElse: () => MaritalStatus.single,
    );

    _selectedReligion = Religion.values.firstWhere(
      (e) =>
          e.toString().split('.').last.toLowerCase() ==
          (widget.profile.religion ?? '').toLowerCase(),
      orElse: () => Religion.islam,
    );

    _selectedBloodType = BloodType.values.firstWhere(
      (e) =>
          e.toString().split('.').last.toLowerCase() ==
          (widget.profile.bloodType ?? '').toLowerCase(),
      orElse: () => BloodType.o,
    );
  }

  @override
  void dispose() {
    _conFirstName.dispose();
    _conLastName.dispose();
    _conNationalId.dispose();
    _conEmail.dispose();
    _conPlaceOfBirth.dispose();
    _conCitizenIdAddress.dispose();
    _conResidentialAddress.dispose();
    _conDateOfBirth.dispose();
    super.dispose();
  }

  Gender? _parseGender(String? gender) {
    if (gender == "L") return Gender.l;
    if (gender == "P") return Gender.p;
    return null;
  }

  void _showDatePickerBottomSheet() {
    DatePickerBottomSheet.show(
      context: context,
      initialDate: DateTime.parse(_conDateOfBirth.text),
      title: Strings.of(context)!.setTheDates,
      onDateSelected: (DateTime selectedDate) {
        setState(() {
          _conDateOfBirth.text = DatePickerBottomSheet.formatDate(selectedDate);
          _formValidator["dateOfBirth"] = true;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: MyAppBar(
        title: Strings.of(context)!.managementProfile,
        elevation: 2,
      ).call(context),
      child: BlocListener<EditProfileCubit, EditProfileState>(
        listener: (_, state) {
          state.whenOrNull(
            loading: () => context.show(),
            success: (data) {
              context.dismiss();
              Strings.of(context)!.editDataSuccess.toToastSuccess(context);

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
          child: AutofillGroup(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: Dimens.space16,
                      vertical: Dimens.space8,
                    ),
                  ),
                ),
                _editProfileForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _editProfileForm() => BlocBuilder<ReloadFormCubit, ReloadFormState>(
    builder: (_, state) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: Dimens.space24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextF(
              isRequired: true,
              border: false,
              backgroundColor: Palette.muted,
              autoFillHints: const [AutofillHints.name],
              key: const Key("firstName"),
              focusNode: _fnFirstName,
              textInputAction: TextInputAction.next,
              controller: _conFirstName,
              keyboardType: TextInputType.name,
              hint: Strings.of(context)!.firstName,
              label: Strings.of(context)!.firstName,
              isValid: _formValidator.putIfAbsent("firstName", () => false),
              validatorListener: (String value) {
                _formValidator["firstName"] = value.isNotEmpty;
                context.read<ReloadFormCubit>().reload();
              },
              errorMessage: Strings.of(context)!.errorEmptyField,
            ),
            SizedBox(height: Dimens.space12),
            TextF(
              isRequired: true,
              border: false,
              backgroundColor: Palette.muted,
              autoFillHints: const [AutofillHints.name],
              key: const Key("lastName"),
              focusNode: _fnLastName,
              textInputAction: TextInputAction.next,
              controller: _conLastName,
              keyboardType: TextInputType.name,
              hint: Strings.of(context)!.lastName,
              label: Strings.of(context)!.lastName,
              isValid: _formValidator.putIfAbsent("lastName", () => false),
              validatorListener: (String value) {
                _formValidator["lastName"] = value.isNotEmpty;
                context.read<ReloadFormCubit>().reload();
              },
              errorMessage: Strings.of(context)!.errorEmptyField,
            ),
            SizedBox(height: Dimens.space12),
            TextF(
              isRequired: true,
              border: false,
              backgroundColor: Palette.muted,
              autoFillHints: const [AutofillHints.name],
              key: const Key("nationalId"),
              focusNode: _fnNationalId,
              textInputAction: TextInputAction.next,
              controller: _conNationalId,
              keyboardType: TextInputType.name,
              hint: Strings.of(context)!.nik,
              label: Strings.of(context)!.nik,
              isValid: _formValidator.putIfAbsent("nationalId", () => false),
              validatorListener: (String value) {
                _formValidator["nationalId"] = value.isNotEmpty;
                context.read<ReloadFormCubit>().reload();
              },
              errorMessage: Strings.of(context)!.errorEmptyField,
            ),
            SizedBox(height: Dimens.space12),
            TextF(
              isRequired: true,
              border: false,
              backgroundColor: Palette.muted,
              autoFillHints: const [AutofillHints.email],
              key: const Key("email"),
              focusNode: _fnEmail,
              textInputAction: TextInputAction.next,
              controller: _conEmail,
              keyboardType: TextInputType.emailAddress,
              hint: Strings.of(context)!.email,
              label: Strings.of(context)!.email,
              isValid: _formValidator.putIfAbsent("email", () => false),
              validatorListener: (String value) {
                _formValidator["email"] = value.isValidEmail();
                context.read<ReloadFormCubit>().reload();
              },
              errorMessage: Strings.of(context)!.errorInvalidEmail,
            ),
            SizedBox(height: Dimens.space12),
            TextF(
              isRequired: true,
              border: false,
              backgroundColor: Palette.muted,
              autoFillHints: const [AutofillHints.addressCityAndState],
              key: const Key("placeOfBirth"),
              focusNode: _fnPlaceOfBirth,
              textInputAction: TextInputAction.next,
              controller: _conPlaceOfBirth,
              keyboardType: TextInputType.text,
              hint: Strings.of(context)!.placeOfBirth,
              label: Strings.of(context)!.placeOfBirth,
              isValid: _formValidator.putIfAbsent("placeOfBirth", () => false),
              validatorListener: (String value) {
                _formValidator["placeOfBirth"] = value.isNotEmpty;
                context.read<ReloadFormCubit>().reload();
              },
              errorMessage: Strings.of(context)!.errorEmptyField,
            ),
            SpacerV(value: Dimens.space12),
            TextF(
              isRequired: true,
              border: false,
              backgroundColor: Palette.muted,
              key: const Key("dateOfBirth"),
              controller: _conDateOfBirth,
              focusNode: _fnDateOfBirth,
              readOnly: true,
              hint: Strings.of(context)!.dateOfBirth,
              label: Strings.of(context)!.dateOfBirth,
              suffixIcon: IconButton(
                icon: const Icon(Icons.calendar_month, color: Palette.text),
                onPressed: _showDatePickerBottomSheet,
              ),
              isValid: _formValidator.putIfAbsent("dateOfBirth", () => false),
              validatorListener: (String value) {
                _formValidator["dateOfBirth"] = value.isNotEmpty;
                // context.read<ReloadFormCubit>().reload();
              },
              errorMessage: Strings.of(context)!.errorEmptyField,
              onTap: _showDatePickerBottomSheet,
            ),
            SpacerV(value: Dimens.space12),
            RichText(
              text: TextSpan(
                text: Strings.of(context)!.gender,
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: medium),
                children: [
                  TextSpan(
                    text: " *",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: medium,
                      color: Palette.redLatte,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RadioButton<Gender>(
                  value: Gender.l,
                  groupValue: _selectedGender!,
                  label: 'Laki-laki',
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                    });
                  },
                ),
                RadioButton<Gender>(
                  value: Gender.p,
                  groupValue: _selectedGender!,
                  label: 'Perempuan',
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: Dimens.space12),
            DropDown<MaritalStatus>(
              labelIsVisible: true,
              isRequired: true,
              label: Strings.of(context)!.maritalStatus,
              key: const Key("marital_status"),
              value: _selectedMaritalStatus!,
              items: MaritalStatus.values
                  .map(
                    (data) => DropdownMenuItem(
                      value: data,
                      child: Text(
                        _getMaritalStatusName(data, context),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedMaritalStatus = value;
                });
              },
            ),
            SizedBox(height: Dimens.space12),
            DropDown<Religion>(
              labelIsVisible: true,
              isRequired: true,
              label: Strings.of(context)!.religion,
              key: const Key("religion"),
              value: _selectedReligion!,
              items: Religion.values
                  .map(
                    (data) => DropdownMenuItem(
                      value: data,
                      child: Text(
                        _getReligionName(data, context),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedReligion = value;
                });
              },
            ),
            SizedBox(height: Dimens.space12),
            DropDown<BloodType>(
              labelIsVisible: true,
              isRequired: true,
              label: Strings.of(context)!.bloodType,
              key: const Key("blood_type"),
              value: _selectedBloodType!,
              items: BloodType.values
                  .map(
                    (data) => DropdownMenuItem(
                      value: data,
                      child: Text(
                        _getBloodTypeName(data, context),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedBloodType = value;
                });
              },
            ),
            SizedBox(height: Dimens.space12),
            TextF(
              maxLines: 4,
              isRequired: true,
              border: false,
              backgroundColor: Palette.muted,
              autoFillHints: const [AutofillHints.addressState],
              key: const Key("citizenIdAddress"),
              focusNode: _fnCitizenIdAddress,
              textInputAction: TextInputAction.next,
              controller: _conCitizenIdAddress,
              keyboardType: TextInputType.streetAddress,
              hint: Strings.of(context)!.citizenIdAddress,
              label: Strings.of(context)!.citizenIdAddress,
              isValid: _formValidator.putIfAbsent(
                "citizenIdAddress",
                () => false,
              ),
              validatorListener: (String value) {
                _formValidator["citizenIdAddress"] = value.isNotEmpty;
                context.read<ReloadFormCubit>().reload();
              },
              errorMessage: Strings.of(context)!.errorEmptyField,
            ),
            Row(
              children: [
                Checkbox(
                  value: isResidentialAddress,
                  onChanged: (bool? value) {
                    setState(() {
                      isResidentialAddress = value ?? false;
                      if (isResidentialAddress) {
                        _conResidentialAddress.text = _conCitizenIdAddress.text;
                      } else {
                        _conResidentialAddress.text = '';
                      }
                    });
                  },
                  side: const BorderSide(color: Colors.grey),
                ),
                Text(
                  Strings.of(context)!.setAsResidentialAddress,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: medium),
                ),
              ],
            ),
            TextF(
              maxLines: 4,
              isRequired: true,
              border: false,
              backgroundColor: Palette.muted,
              autoFillHints: const [AutofillHints.addressState],
              key: const Key("residentialAddress"),
              focusNode: _fnResidentialAddress,
              textInputAction: TextInputAction.next,
              controller: _conResidentialAddress,
              keyboardType: TextInputType.streetAddress,
              hint: Strings.of(context)!.residentialAddress,
              label: Strings.of(context)!.residentialAddress,
              enabled: !isResidentialAddress,
              isValid: _formValidator.putIfAbsent(
                "residentialAddress",
                () => false,
              ),
              // validatorListener: (String value) {
              //   _formValidator["residentialAddress"] = value.isNotEmpty;
              //   context.read<ReloadFormCubit>().reload();
              // },
              // errorMessage: Strings.of(context)!.errorEmptyField,
            ),
            SizedBox(height: Dimens.space12),
            Button(
              title: Strings.of(context)!.save,
              width: double.maxFinite,
              onPressed: () => context.read<EditProfileCubit>().editProfile(
                EditProfileParams(
                  firstname: _conFirstName.text,
                  lastname: _conLastName.text,
                  nik: _conNationalId.text,
                  email: _conEmail.text,
                  birthplace: _conPlaceOfBirth.text,
                  datebirth: _conDateOfBirth.text,
                  gender: _selectedGender == Gender.l ? "L" : "P",
                  maritalStatus: _selectedMaritalStatus!
                      .toString()
                      .split('.')
                      .last
                      .toUpperCase(),
                  religion: _selectedReligion!
                      .toString()
                      .split('.')
                      .last
                      .toUpperCase(),
                  bloodType: _getBloodTypeName(_selectedBloodType!, context),
                  citizenAddress: _conCitizenIdAddress.text,
                  residentialAddress: _conResidentialAddress.text,
                ),
              ),
            ),
            SizedBox(height: Dimens.space12),
          ],
        ),
      );
    },
  );

  String _getMaritalStatusName(
    MaritalStatus maritalStatus,
    BuildContext context,
  ) {
    switch (maritalStatus) {
      case MaritalStatus.mariage:
        return Strings.of(context)!.mariage;
      case MaritalStatus.single:
        return Strings.of(context)!.single;
      case MaritalStatus.widow:
        return Strings.of(context)!.widow;
    }
  }

  String _getReligionName(Religion religion, BuildContext context) {
    if (religion == Religion.kristen) {
      return Strings.of(context)!.kristen;
    } else if (religion == Religion.hindu) {
      return Strings.of(context)!.hindu;
    } else if (religion == Religion.buddha) {
      return Strings.of(context)!.buddha;
    } else if (religion == Religion.konghucu) {
      return Strings.of(context)!.konghucu;
    } else {
      return Strings.of(context)!.islam;
    }
  }

  String _getBloodTypeName(BloodType bloodType, BuildContext context) {
    if (bloodType == BloodType.a) {
      return 'A';
    } else if (bloodType == BloodType.b) {
      return 'B';
    } else if (bloodType == BloodType.ab) {
      return 'AB';
    } else {
      return 'O';
    }
  }
}
