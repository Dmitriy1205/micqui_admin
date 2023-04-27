// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bucket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bucket _$$_BucketFromJson(Map<String, dynamic> json) => _$_Bucket(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
      published: json['published'] as bool? ?? false,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => Questions.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_BucketToJson(_$_Bucket instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'published': instance.published,
      'questions': instance.questions,
    };
