import 'package:freezed_annotation/freezed_annotation.dart';

part 'websocket_message.freezed.dart';
part 'websocket_message.g.dart';

@freezed
class WebSocketMessage with _$WebSocketMessage {
  const factory WebSocketMessage({
    required String message,
  }) = _WebSocketMessage;

  factory WebSocketMessage.fromJson(Map<String, dynamic> json) =>
      _$WebSocketMessageFromJson(json);
}
