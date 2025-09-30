sealed class Failure {
  /// ignore: avoid_unused_constructor_parameters
  const Failure([List properties = const <dynamic>[]]);
}

class ServerFailure extends Failure {
  final String? message;

  const ServerFailure(this.message);

  @override
  bool operator ==(Object other) =>
      other is ServerFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}

class NoDataFailure extends Failure {
  @override
  bool operator ==(Object other) => other is NoDataFailure;

  @override
  int get hashCode => 0;
}

class CacheFailure extends Failure {
  @override
  bool operator ==(Object other) => other is CacheFailure;

  @override
  int get hashCode => 0;
}

class UnauthorizedFailure extends Failure {
  final String? message;
  const UnauthorizedFailure([this.message]);
}

class TimeoutFailure extends Failure {
  final String? message;
  const TimeoutFailure([this.message]);
}

class NetworkFailure extends Failure {
  final String? message;

  const NetworkFailure(this.message);

  @override
  bool operator ==(Object other) =>
      other is NetworkFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}
