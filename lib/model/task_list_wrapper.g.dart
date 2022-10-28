// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskListModel _$$_TaskListModelFromJson(Map<String, dynamic> json) =>
    _$_TaskListModel(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      taskListName: json['taskListName'] as String?,
      publishDate: json['publishDate'] == null
          ? null
          : DateTime.parse(json['publishDate'] as String),
    );

Map<String, dynamic> _$$_TaskListModelToJson(_$_TaskListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'taskListName': instance.taskListName,
      'publishDate': instance.publishDate?.toIso8601String(),
    };
