import 'package:json_annotation/json_annotation.dart';
part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  String id;
  @JsonKey(defaultValue: "")
  String title;
  @JsonKey(defaultValue: "")
  String description;
  @JsonKey(defaultValue: "")
  String image;
  String type;
  @JsonKey(defaultValue: true)
  bool status;
  @JsonKey(name: 'created_at_unix_timestamp')
  String? createdAtUnixTimestamp;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'deleted_at')
  String? deletedAt;


  PostModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.type,
    this.status = true,
    this.createdAtUnixTimestamp,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
// ignore: constant_identifier_names
enum PostModelType{PROMOTION, NEWS, TERMS}

