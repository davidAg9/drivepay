import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
part 'tollmanager.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@collection
class TollManager {
  final Id? id;
  final String uid;

  TollManager({this.id, required this.uid});

  factory TollManager.fromJson(Map<String, dynamic> json) => _$TollManagerFromJson(json);
  Map<String, dynamic> toJson() => _$TollManagerToJson(this);
}
