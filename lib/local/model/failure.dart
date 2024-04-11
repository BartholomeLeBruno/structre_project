import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({Error? error, List<Error>? errors}) = _Failure;

  static Failure create({required String message}) => Failure(error: Error(message: message));
}

@freezed
class Error with _$Error {
  const factory Error({
    String? type,
    String? reason,
    String? message,
    String? subjectType,
    String? subject,
    String? errorCode,
    String? language,
    String? position,
    String? exceptionMessage,
  }) = _Error;
}
