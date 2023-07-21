// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      id: json['id'] as String,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      type: json['type'] as String,
      status: json['status'] as bool? ?? true,
      createdAtUnixTimestamp: json['created_at_unix_timestamp'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'type': instance.type,
      'status': instance.status,
      'created_at_unix_timestamp': instance.createdAtUnixTimestamp,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
