import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
part 'numberplate.g.dart';

@embedded
@JsonSerializable(explicitToJson: true)
class NumberPlate {
  final int? plateNumber;
  final String? countryOrigin;
  final DateTime? expiredDate;
  final DateTime? createdDate;
  NumberPlate({this.plateNumber, this.countryOrigin, this.expiredDate, this.createdDate});

  NumberPlate.allArgs({required this.plateNumber, required this.countryOrigin, required this.expiredDate, required this.createdDate});

  factory NumberPlate.fromJson(Map<String, dynamic> json) => _$NumberPlateFromJson(json);
  Map<String, dynamic> toJson() => _$NumberPlateToJson(this);
}
