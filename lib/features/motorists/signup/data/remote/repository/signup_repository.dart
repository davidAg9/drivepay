import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:drivepay/features/motorists/models/motorist.dart';
import 'package:drivepay/features/motorists/signup/domain/interfaces/account_registeration_interface.dart';

class AccountRegistrationRepository implements AccountRegistrationRepositoryInterface {
  final CollectionReference db;

  AccountRegistrationRepository(this.db);

  @override
  Future<void> changePassword({required forEmail}) async {
    return FirebaseAuth.instance.sendPasswordResetEmail(email: forEmail);
  }

  @override
  Future<Motorist> register({required String fullname, required String email, required String password}) async {
    try {
      final userCreds = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      final motorist = Motorist(uid: userCreds.user!.uid, fullName: fullname, email: email, licenseID: "", joinDate: DateTime.now());
      return motorist;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw ErrorDescription("Your password is weak");
      } else if (e.code == 'email-already-in-use') {
        throw ErrorDescription('The account already exists for that email.');
      } else {
        debugPrint(e.toString());
        throw ErrorDescription("Some went wrong ,Firebase error");
      }
    } catch (e) {
      debugPrint(e.toString());
      throw ErrorDescription("Some went wrong");
    }
  }

  @override
  Future<Motorist> save({required Motorist motorist}) async {
    await db.doc(motorist.uid).set(motorist.toJson());
    return motorist;
  }

  @override
  Future<void> reAuthenticate({required AuthCredential withCredential}) async {
    await FirebaseAuth.instance.currentUser?.reauthenticateWithCredential(withCredential);
  }
}
