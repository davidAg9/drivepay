import 'package:drivepay/features/motorists/models/car.dart';

abstract class CarRegistrationRepositoryInterface {
  Future<List<Car>> search({required String carBrand});
  Future<Car> add({required String toUserId});
  Future<bool> verifyRegistered({required int numberPlate});
}
