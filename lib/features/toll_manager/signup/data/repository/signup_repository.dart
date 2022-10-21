import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drivepay/features/toll_manager/models/tollmanager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:drivepay/core/interfaces/signup/account_registeration_interface.dart';

class TMAccountRegistrationRepository implements AccountRegistrationRepositoryInterface<TollManager> {
  final CollectionReference db;

  TMAccountRegistrationRepository(this.db);

  @override
  Future<void> changePassword({required forEmail}) async {
    return FirebaseAuth.instance.sendPasswordResetEmail(email: forEmail);
  }

  @override
  Future<TollManager> register({required String fullname, required String email, required String password}) async {
    try {
      final userCreds = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      final tollmanager = TollManager(uid: userCreds.user!.uid);
      return tollmanager;
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
  Future<TollManager> save({required TollManager user}) async {
    await db.doc(user.uid).set(user.toJson());
    return user;
  }

  @override
  Future<void> reAuthenticate({required AuthCredential withCredential}) async {
    await FirebaseAuth.instance.currentUser?.reauthenticateWithCredential(withCredential);
  }
}
