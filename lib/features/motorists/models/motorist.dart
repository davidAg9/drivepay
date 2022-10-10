import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:drivepay/features/motorists/models/car.dart';
part 'motorist.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@collection
class Motorist {
  final Id? id;
  final String uid;
  final String fullName;
  final String licenseID;
  final String email;
  final String? phoneNumber;
  final DateTime joinDate;

  @Backlink(to: "motorist")
  final cars = IsarLinks<Car>();

  Motorist({
    this.id,
    required this.uid,
    required this.fullName,
    required this.licenseID,
    required this.email,
    required this.joinDate,
    this.phoneNumber,
  });

  factory Motorist.fromJson(Map<String, dynamic> json) => _$MotoristFromJson(json);
  Map<String, dynamic> toJson() => _$MotoristToJson(this);
}
