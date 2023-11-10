// ignore_for_file: must_be_immutable

part of 'phone_registration_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PhoneRegistration widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PhoneRegistrationEvent extends Equatable {}

/// Event that is dispatched when the PhoneRegistration widget is first created.
class PhoneRegistrationInitialEvent extends PhoneRegistrationEvent {
  @override
  List<Object?> get props => [];
}
