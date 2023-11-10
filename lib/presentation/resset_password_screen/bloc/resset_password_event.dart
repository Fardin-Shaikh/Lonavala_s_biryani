// ignore_for_file: must_be_immutable

part of 'resset_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RessetPassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RessetPasswordEvent extends Equatable {}

/// Event that is dispatched when the RessetPassword widget is first created.
class RessetPasswordInitialEvent extends RessetPasswordEvent {
  @override
  List<Object?> get props => [];
}
