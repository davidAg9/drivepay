import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drivepay/features/motorists/models/car.dart';
import 'package:drivepay/features/motorists/signup/domain/interfaces/car_registration_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CarRegistrationRepository implements CarRegistrationRepositoryInterface {
  final CollectionReference carsCollection;
  final CollectionReference motoristCollection;
  final CollectionReference numberplatesCollection;

  CarRegistrationRepository({required this.carsCollection, required this.motoristCollection, required this.numberplatesCollection});

  @override
  Future<void> add({required Car car, required String toUserId}) async {
    return motoristCollection.doc(FirebaseAuth.instance.currentUser!.uid).collection("cars").doc(car.numberplate!.plateNumber).set(car.toJson());
  }

  @override
  Future<List<Car>> search({required String carBrand}) async {
    var cars = <Car>[];
    final res = await carsCollection.where("brandName", isGreaterThanOrEqualTo: carBrand).limit(100).get();
    if (res.docs.isEmpty) {
      throw ErrorDescription("No result found");
    }
    for (final doc in res.docs) {
      cars.add(Car.fromJson(doc.data()! as Map<String, Object>));
    }
    return cars;
  }

  @override
  Future<bool> verifyRegistered({required String numberPlate}) async {
    final res = await numberplatesCollection.doc(numberPlate).get();
    return res.exists;
  }
}
