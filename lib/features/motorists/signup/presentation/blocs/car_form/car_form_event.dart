part of 'car_form_bloc.dart';

@freezed
class CarFormEvent with _$CarFormEvent {
  const factory CarFormEvent.search({required String car}) = _SearchBy;

  const factory CarFormEvent.verify({required String licenseNumber}) = _Verify;

  const factory CarFormEvent.addCar({required Car car, required String toUserId}) = _AddCar;
}
