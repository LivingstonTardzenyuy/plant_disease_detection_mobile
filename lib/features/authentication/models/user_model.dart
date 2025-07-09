import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class UserModel {
  final int id;
  String username;
  String email;

  @JsonKey(name: 'first_name')
  String firstName;

  @JsonKey(name: 'last_name')
  String lastName;

  @JsonKey(readValue: _readProfileId, includeIfNull: false)
  final int? profileId;

  @JsonKey(readValue: _readPhoneNumber, includeIfNull: false)
  String? phoneNumber;

  @JsonKey(readValue: _readAvatar, includeIfNull: false)
  String? avatarUrl;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.profileId,
    this.phoneNumber,
    this.avatarUrl,
  });

  static dynamic _readProfileId(Map json, String key) => json['profile']?['id'];
  static dynamic _readPhoneNumber(Map json, String key) => json['profile']?['phone_number'];
  static dynamic _readAvatar(Map json, String key) => json['profile']?['avatar'];

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = _$UserModelToJson(this);
    data.remove('profile_id');
    data.remove('phone_number');
    data.remove('avatar');

    final Map<String, dynamic> profileData = {};
    if (phoneNumber != null) profileData['phone_number'] = phoneNumber;
    if (avatarUrl != null) profileData['avatar'] = avatarUrl;

    if (profileData.isNotEmpty) {
      data['profile'] = profileData;
    }

    return data;
  }

  static UserModel empty() => UserModel(
    id: 0,
    username: '',
    email: '',
    firstName: '',
    lastName: '',
    profileId: null,
    phoneNumber: null,
    avatarUrl: null,
  );
}
