// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      username: json['username'] as String?,
      email: json['email'] as String?,
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      datePublished: json['datePublished'] == null
          ? null
          : DateTime.parse(json['datePublished'] as String),
      password: json['password'] as String?,
      taskNames: (json['taskNames'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'uid': instance.uid,
      'name': instance.name,
      'datePublished': instance.datePublished?.toIso8601String(),
      'password': instance.password,
      'taskNames': instance.taskNames,
    };
