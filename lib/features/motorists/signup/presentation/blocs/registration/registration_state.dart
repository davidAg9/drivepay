part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.registering() = _Registering;
  const factory RegistrationState.registered() = _Registered;
  const factory RegistrationState.saved(Motorist user) = _Saved;
  const factory RegistrationState.registrationError(String err) = _RegistrationError;
}
