import 'package:json_annotation/json_annotation.dart';
part 'user1.g.dart';

@JsonSerializable()
class AppUser {
  final String email;

  const AppUser({
    required this.email,
  });
  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  Map<String, dynamic> toJson() => _$AppUserToJson(this);
}
