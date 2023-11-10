// ignore_for_file: must_be_immutable

part of 'vefification_code_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VefificationCode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VefificationCodeEvent extends Equatable {}

/// Event that is dispatched when the VefificationCode widget is first created.
class VefificationCodeInitialEvent extends VefificationCodeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VefificationCodeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
