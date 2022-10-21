part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.register({required String fullname, required String email, required String password}) = _Register;
  const factory RegistrationEvent.saveMotorist({required Motorist user}) = _SaveMotorist;
}
