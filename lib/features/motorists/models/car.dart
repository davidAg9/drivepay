import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:drivepay/features/motorists/models/motorist.dart';
import 'package:drivepay/features/motorists/models/numberplate.dart';
part 'car.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@collection
class Car {
  final Id? id;
  final String brandName;
  final double? amountToPay;
  @Enumerated(EnumType.name)
  final CarType carType;

  final NumberPlate? numberplate;

  final motorist = IsarLink<Motorist>();

  Car({this.id, required this.brandName, required this.carType, required this.numberplate, this.amountToPay});

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
  Map<String, dynamic> toJson() => _$CarToJson(this);
}

enum CarType {
  truck("truck"),
  hatchback("hatchback"),
  suv("suv"),
  crossover("crossover"),
  fourbyfour("4x4"),
  pickup("pickup"),
  van("van"),
  sport("sport"),
  micro("micro"),
  bus("bus"),
  sedan("sedan"),
  bike("bike");

  const CarType(this.name);
  final String name;
}
