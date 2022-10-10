import 'package:get_it/get_it.dart';
import 'package:drivepay/features/motorists/signup/data/remote/repository/signup_repository.dart';

final getIt = GetIt.instance;

void initializeAllDependecies() {
  getIt.registerFactory(() => AccountRegistrationRepository(getIt()));
}
