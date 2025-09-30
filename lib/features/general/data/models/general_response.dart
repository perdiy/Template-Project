import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/features/features.dart';

part 'general_response.freezed.dart';
part 'general_response.g.dart';

@freezed
class GeneralResponse with _$GeneralResponse {
  const factory GeneralResponse({@JsonKey(name: "data") DataGeneral? data}) =
      _GeneralResponse;

  const GeneralResponse._();

  General toEntity() => General(userAccountId: data?.userAccountId);

  factory GeneralResponse.fromJson(Map<String, dynamic> json) =>
      _$GeneralResponseFromJson(json);
}

@freezed
class DataGeneral with _$DataGeneral {
  const factory DataGeneral({
    @JsonKey(name: "userAccountId") String? userAccountId,
  }) = _DataGeneral;

  factory DataGeneral.fromJson(Map<String, dynamic> json) =>
      _$DataGeneralFromJson(json);
}
