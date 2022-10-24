import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum TaskStatus {
  @JsonValue('Completed')
  completed,
  @JsonValue('Uncompleted')
  uncompleted
}
