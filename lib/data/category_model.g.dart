// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['id'] as String,
      title: json['title'] as String,
      banner: json['banner'] as String?,
      image: json['image'] as String? ?? '',
      order: json['order'] as int,
      isHot: json['is_host'] as bool? ?? false,
      status: json['status'] as bool? ?? true,
      createdAtUnixTimestamp: json['created_at_unix_timestamp'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      deletedAt: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'banner': instance.banner,
      'image': instance.image,
      'order': instance.order,
      'is_host': instance.isHot,
      'status': instance.status,
      'created_at_unix_timestamp': instance.createdAtUnixTimestamp,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
