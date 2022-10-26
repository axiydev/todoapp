// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TasksModel _$$_TasksModelFromJson(Map<String, dynamic> json) =>
    _$_TasksModel(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      taskListName: json['taskListName'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      taskStatus: $enumDecodeNullable(_$TaskStatusEnumMap, json['taskStatus']),
      isCompleted: json['isCompleted'] as bool?,
      publishDate: json['publishDate'] == null
          ? null
          : DateTime.parse(json['publishDate'] as String),
      isFavourite: json['isFavourite'] as bool?,
    );

Map<String, dynamic> _$$_TasksModelToJson(_$_TasksModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'taskListName': instance.taskListName,
      'title': instance.title,
      'description': instance.description,
      'taskStatus': _$TaskStatusEnumMap[instance.taskStatus],
      'isCompleted': instance.isCompleted,
      'publishDate': instance.publishDate?.toIso8601String(),
      'isFavourite': instance.isFavourite,
    };

const _$TaskStatusEnumMap = {
  TaskStatus.completed: 'Completed',
  TaskStatus.uncompleted: 'Uncompleted',
};
