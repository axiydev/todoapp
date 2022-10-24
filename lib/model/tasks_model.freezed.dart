// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TasksModel _$TasksModelFromJson(Map<String, dynamic> json) {
  return _TasksModel.fromJson(json);
}

/// @nodoc
mixin _$TasksModel {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TaskStatus? get taskStatus => throw _privateConstructorUsedError;
  DateTime? get publishDate => throw _privateConstructorUsedError;
  bool? get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksModelCopyWith<TasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksModelCopyWith<$Res> {
  factory $TasksModelCopyWith(
          TasksModel value, $Res Function(TasksModel) then) =
      _$TasksModelCopyWithImpl<$Res, TasksModel>;
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? title,
      String? description,
      TaskStatus? taskStatus,
      DateTime? publishDate,
      bool? isFavourite});
}

/// @nodoc
class _$TasksModelCopyWithImpl<$Res, $Val extends TasksModel>
    implements $TasksModelCopyWith<$Res> {
  _$TasksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? taskStatus = freezed,
    Object? publishDate = freezed,
    Object? isFavourite = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskStatus: freezed == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as TaskStatus?,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFavourite: freezed == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TasksModelCopyWith<$Res>
    implements $TasksModelCopyWith<$Res> {
  factory _$$_TasksModelCopyWith(
          _$_TasksModel value, $Res Function(_$_TasksModel) then) =
      __$$_TasksModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? title,
      String? description,
      TaskStatus? taskStatus,
      DateTime? publishDate,
      bool? isFavourite});
}

/// @nodoc
class __$$_TasksModelCopyWithImpl<$Res>
    extends _$TasksModelCopyWithImpl<$Res, _$_TasksModel>
    implements _$$_TasksModelCopyWith<$Res> {
  __$$_TasksModelCopyWithImpl(
      _$_TasksModel _value, $Res Function(_$_TasksModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? taskStatus = freezed,
    Object? publishDate = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_$_TasksModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskStatus: freezed == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as TaskStatus?,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFavourite: freezed == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TasksModel implements _TasksModel {
  const _$_TasksModel(
      {this.id,
      this.userId,
      this.title,
      this.description,
      this.taskStatus,
      this.publishDate,
      this.isFavourite});

  factory _$_TasksModel.fromJson(Map<String, dynamic> json) =>
      _$$_TasksModelFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final TaskStatus? taskStatus;
  @override
  final DateTime? publishDate;
  @override
  final bool? isFavourite;

  @override
  String toString() {
    return 'TasksModel(id: $id, userId: $userId, title: $title, description: $description, taskStatus: $taskStatus, publishDate: $publishDate, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.taskStatus, taskStatus) ||
                other.taskStatus == taskStatus) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, description,
      taskStatus, publishDate, isFavourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasksModelCopyWith<_$_TasksModel> get copyWith =>
      __$$_TasksModelCopyWithImpl<_$_TasksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TasksModelToJson(
      this,
    );
  }
}

abstract class _TasksModel implements TasksModel {
  const factory _TasksModel(
      {final String? id,
      final String? userId,
      final String? title,
      final String? description,
      final TaskStatus? taskStatus,
      final DateTime? publishDate,
      final bool? isFavourite}) = _$_TasksModel;

  factory _TasksModel.fromJson(Map<String, dynamic> json) =
      _$_TasksModel.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  TaskStatus? get taskStatus;
  @override
  DateTime? get publishDate;
  @override
  bool? get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$$_TasksModelCopyWith<_$_TasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}
