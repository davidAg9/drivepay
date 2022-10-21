part of 'car_form_bloc.dart';

@freezed
class CarFormState with _$CarFormState {
  const factory CarFormState.initial() = _Initial;

  const factory CarFormState.searching() = _Searching;
  const factory CarFormState.searchFound(List<Car> cars) = _SearchFound;
  const factory CarFormState.noCarsFound() = _NoCarsFound;

  const factory CarFormState.verifyingLicense() = _VerifyingLicense;
  const factory CarFormState.licenseVerified() = _LicenseVerified;
  const factory CarFormState.licenseDoesNotExist() = _LicenseDoesNotExist;

  const factory CarFormState.carAdded() = _CarAdded;

  const factory CarFormState.somethingWentWrong(String err) = _SomethingWentWrong;
}
