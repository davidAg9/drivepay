import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
part 'itmanager.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@collection
class ITManager {
  final Id? id;
  final String uid;

  ITManager({this.id, required this.uid});

  factory ITManager.fromJson(Map<String, dynamic> json) => _$ITManagerFromJson(json);
  Map<String, dynamic> toJson() => _$ITManagerToJson(this);
}
