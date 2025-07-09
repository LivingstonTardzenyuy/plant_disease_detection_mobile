// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: (json['id'] as num).toInt(),
  username: json['username'] as String,
  email: json['email'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  profileId: (UserModel._readProfileId(json, 'profile_id') as num?)?.toInt(),
  phoneNumber: UserModel._readPhoneNumber(json, 'phone_number') as String?,
  avatarUrl: UserModel._readAvatar(json, 'avatar_url') as String?,
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'email': instance.email,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  if (instance.profileId case final value?) 'profile_id': value,
  if (instance.phoneNumber case final value?) 'phone_number': value,
  if (instance.avatarUrl case final value?) 'avatar_url': value,
};
