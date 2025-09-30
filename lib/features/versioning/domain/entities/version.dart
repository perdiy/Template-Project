import 'package:freezed_annotation/freezed_annotation.dart';

part 'version.freezed.dart';

@freezed
class Version with _$Version {
  const factory Version({
    String? version,
  }) = _Version;
}
