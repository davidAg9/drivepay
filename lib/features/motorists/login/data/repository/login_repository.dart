import 'package:firebase_auth/firebase_auth.dart';
import 'package:drivepay/features/motorists/login/domain/interfaces/login_interface.dart';

class LoginRepository implements LoginRepositoryInterface {
  @override
  Future<void> reset({required password}) async {
    return FirebaseAuth.instance.currentUser?.updatePassword(password);
  }
}
