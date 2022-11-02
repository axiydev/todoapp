import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
      {String? username,
      String? email,
      String? uid,
      String? name,
      DateTime? datePublished,
      String? password,
      List<Map<String, dynamic>>? taskNames}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
