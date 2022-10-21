import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:drivepay/features/motorists/models/car.dart';
import 'package:drivepay/features/motorists/signup/domain/interfaces/car_registration_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_form_event.dart';
part 'car_form_state.dart';
part 'car_form_bloc.freezed.dart';

class CarFormBloc extends Bloc<CarFormEvent, CarFormState> {
  final CarRegistrationRepositoryInterface carRepo;
  CarFormBloc(this.carRepo) : super(const _Initial()) {
    on<_SearchBy>((event, emit) async {
      emit(const CarFormState.searching());
      try {
        final res = await carRepo.search(carBrand: event.car);
        if (res.isNotEmpty) {
          emit(CarFormState.searchFound(res));
        } else {
          emit(const CarFormState.noCarsFound());
        }
      } catch (e) {
        emit(CarFormState.somethingWentWrong(e.toString()));
      }
    }, transformer: concurrent());

    on<_Verify>((event, emit) async {
      emit(const CarFormState.verifyingLicense());
      try {
        final isVerified = await carRepo.verifyRegistered(numberPlate: event.licenseNumber);
        if (isVerified) {
          emit(const CarFormState.licenseVerified());
        } else {
          emit(const CarFormState.licenseDoesNotExist());
        }
      } catch (e) {
        emit(CarFormState.somethingWentWrong(e.toString()));
      }
    }, transformer: droppable());

    on<_AddCar>((event, emit) async {
      try {
        await carRepo.add(car: event.car, toUserId: event.toUserId);
        emit(const CarFormState.carAdded());
      } catch (e) {
        emit(CarFormState.somethingWentWrong(e.toString()));
      }
    }, transformer: droppable());
  }
}
