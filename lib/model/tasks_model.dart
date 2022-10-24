import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/model/task_status.dart';
part 'tasks_model.freezed.dart';
part 'tasks_model.g.dart';

@freezed
class TasksModel with _$TasksModel {
  const factory TasksModel(
      {String? id,
      String? userId,
      String? title,
      String? description,
      TaskStatus? taskStatus,
      DateTime? publishDate,
      bool? isFavourite}) = _TasksModel;

  factory TasksModel.fromJson(Map<String, dynamic> json) =>
      _$TasksModelFromJson(json);
}
