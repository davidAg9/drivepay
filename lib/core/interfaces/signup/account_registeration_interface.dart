import 'package:firebase_auth/firebase_auth.dart';

abstract class AccountRegistrationRepositoryInterface<T> {
  Future<T> register({required String fullname, required String email, required String password});
  Future<T> save({required T user});
  Future<void> changePassword({required String forEmail});
  Future<void> reAuthenticate({required AuthCredential withCredential});
}
