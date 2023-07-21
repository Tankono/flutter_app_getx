import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  String id;
  String title;
  String? banner;
  @JsonKey(defaultValue: "")
  String? image;
  int order;
  @JsonKey(name: 'is_host', defaultValue: false)
  bool isHot;
  @JsonKey(defaultValue: true)  
  bool status;
  @JsonKey(name: 'created_at_unix_timestamp')
  String createdAtUnixTimestamp;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'deleted_at')
  String? deletedAt;  
  CategoryModel({
    required this.id,
    required this.title,
    this.banner,
    this.image,
    required this.order,
    required this.isHot,
    required this.status,
    required this.createdAtUnixTimestamp,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
