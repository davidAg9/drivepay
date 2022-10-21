import 'package:drivepay/features/motorists/models/car.dart';

abstract class CarRegistrationRepositoryInterface {
  Future<List<Car>> search({required String carBrand});
  Future<void> add({required Car car, required String toUserId});
  Future<bool> verifyRegistered({required String numberPlate});
}
