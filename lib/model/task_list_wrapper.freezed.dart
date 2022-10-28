// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_list_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskListModel _$TaskListModelFromJson(Map<String, dynamic> json) {
  return _TaskListModel.fromJson(json);
}

/// @nodoc
mixin _$TaskListModel {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get taskListName => throw _privateConstructorUsedError;
  DateTime? get publishDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskListModelCopyWith<TaskListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListModelCopyWith<$Res> {
  factory $TaskListModelCopyWith(
          TaskListModel value, $Res Function(TaskListModel) then) =
      _$TaskListModelCopyWithImpl<$Res, TaskListModel>;
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? taskListName,
      DateTime? publishDate});
}

/// @nodoc
class _$TaskListModelCopyWithImpl<$Res, $Val extends TaskListModel>
    implements $TaskListModelCopyWith<$Res> {
  _$TaskListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? taskListName = freezed,
    Object? publishDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskListName: freezed == taskListName
          ? _value.taskListName
          : taskListName // ignore: cast_nullable_to_non_nullable
              as String?,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskListModelCopyWith<$Res>
    implements $TaskListModelCopyWith<$Res> {
  factory _$$_TaskListModelCopyWith(
          _$_TaskListModel value, $Res Function(_$_TaskListModel) then) =
      __$$_TaskListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? taskListName,
      DateTime? publishDate});
}

/// @nodoc
class __$$_TaskListModelCopyWithImpl<$Res>
    extends _$TaskListModelCopyWithImpl<$Res, _$_TaskListModel>
    implements _$$_TaskListModelCopyWith<$Res> {
  __$$_TaskListModelCopyWithImpl(
      _$_TaskListModel _value, $Res Function(_$_TaskListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? taskListName = freezed,
    Object? publishDate = freezed,
  }) {
    return _then(_$_TaskListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskListName: freezed == taskListName
          ? _value.taskListName
          : taskListName // ignore: cast_nullable_to_non_nullable
              as String?,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskListModel implements _TaskListModel {
  const _$_TaskListModel(
      {this.id, this.userId, this.taskListName, this.publishDate});

  factory _$_TaskListModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskListModelFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? taskListName;
  @override
  final DateTime? publishDate;

  @override
  String toString() {
    return 'TaskListModel(id: $id, userId: $userId, taskListName: $taskListName, publishDate: $publishDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.taskListName, taskListName) ||
                other.taskListName == taskListName) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, taskListName, publishDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskListModelCopyWith<_$_TaskListModel> get copyWith =>
      __$$_TaskListModelCopyWithImpl<_$_TaskListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskListModelToJson(
      this,
    );
  }
}

abstract class _TaskListModel implements TaskListModel {
  const factory _TaskListModel(
      {final String? id,
      final String? userId,
      final String? taskListName,
      final DateTime? publishDate}) = _$_TaskListModel;

  factory _TaskListModel.fromJson(Map<String, dynamic> json) =
      _$_TaskListModel.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get taskListName;
  @override
  DateTime? get publishDate;
  @override
  @JsonKey(ignore: true)
  _$$_TaskListModelCopyWith<_$_TaskListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
