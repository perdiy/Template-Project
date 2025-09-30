part of 'versioning_cubit.dart';

@freezed
class VersioningState with _$VersioningState {
  const factory VersioningState.loading() = _Loading;
  const factory VersioningState.success(String? data) = _Success;
  const factory VersioningState.failure(String message) = _Failure;
}
