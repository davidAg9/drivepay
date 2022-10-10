import 'package:firebase_auth/firebase_auth.dart';
import 'package:drivepay/features/motorists/models/motorist.dart';

abstract class AccountRegistrationRepositoryInterface {
  Future<Motorist> register({required String fullname, required String email, required String password});
  Future<Motorist> save({required Motorist motorist});
  Future<void> changePassword({required String forEmail});
  Future<void> reAuthenticate({required AuthCredential withCredential});
}
