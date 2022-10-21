import 'package:drivepay/core/interfaces/signup/account_registeration_interface.dart';
import 'package:drivepay/features/motorists/models/motorist.dart';
import 'package:drivepay/features/motorists/signup/data/repository/signup_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initializeAllDependecies() {
  getIt.registerFactory<AccountRegistrationRepositoryInterface<Motorist>>(() => MTAccountRegistrationRepository(getIt()));
}
