import 'package:freezed_annotation/freezed_annotation.dart';

part 'general.freezed.dart';

@freezed
class General with _$General {
  const factory General({
    String? userAccountId,
  }) = _General;
}
