import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_list_wrapper.freezed.dart';
part 'task_list_wrapper.g.dart';

@freezed
class TaskListModel with _$TaskListModel {
  const factory TaskListModel({
    String? id,
    String? userId,
    String? taskListName,
    DateTime? publishDate,
  }) = _TaskListModel;

  factory TaskListModel.fromJson(Map<String, dynamic> json) =>
      _$TaskListModelFromJson(json);
}
