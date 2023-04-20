// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Questions _$$_QuestionsFromJson(Map<String, dynamic> json) => _$_Questions(
      name: json['name'] as String?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_QuestionsToJson(_$_Questions instance) =>
    <String, dynamic>{
      'name': instance.name,
      'variants': instance.variants,
    };
