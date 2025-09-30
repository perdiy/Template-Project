import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/features/features.dart';

part 'version_response.freezed.dart';
part 'version_response.g.dart';

@freezed
class VersionResponse with _$VersionResponse {
  const factory VersionResponse({@JsonKey(name: "data") DataVersion? data}) =
      _VersionResponse;

  const VersionResponse._();

  factory VersionResponse.fromJson(Map<String, dynamic> json) =>
      _$VersionResponseFromJson(json);

  Version toEntity() => Version(version: data?.version);
}

@freezed
class DataVersion with _$DataVersion {
  const factory DataVersion({@JsonKey(name: "version") String? version}) =
      _DataVersion;

  factory DataVersion.fromJson(Map<String, dynamic> json) =>
      _$DataVersionFromJson(json);
}
