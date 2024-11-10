import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String? userId, // maps to `user_id` in JSON
    required String? name,
    required String? email,
    required String? password,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
