// common/models/user_model.dart (or your specific path)
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(
  explicitToJson: true, // Needed for custom toJson logic involving nested structures
  fieldRename: FieldRename.snake, // Applies to top-level fields
)
class UserModel {
  final int id; // From Django User model
  String username;
  String email;
  String firstName;
  String lastName;

  // Fields from UserProfile, flattened into UserModel
  // We use @JsonKey to map them to the nested 'profile' structure for DRF
  @JsonKey(name: 'profile_id', readValue: _readProfileId, includeIfNull: false)
  final int? profileId; // ID of the UserProfile object itself

  @JsonKey(name: 'phone_number', readValue: _readPhoneNumber, includeIfNull: false)
  String? phoneNumber;

  @JsonKey(name: 'avatar', readValue: _readAvatar, includeIfNull: false)
  String? avatarUrl; // Will store the avatar URL string

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

  // Helper functions to read nested values from the 'profile' object in JSON
  static dynamic _readProfileId(Map json, String key) => json['profile']?['id'];
  static dynamic _readPhoneNumber(Map json, String key) => json['profile']?['phone_number'];
  static dynamic _readAvatar(Map json, String key) => json['profile']?['avatar'];


  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  /// Converts this UserModel instance to a map suitable for DRF.
  /// It will reconstruct the nested 'profile' object.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = _$UserModelToJson(this); // Base serialization

    // Manually construct the nested 'profile' part for DRF
    // Remove the flattened profile fields from the top level
    data.remove('profile_id'); // if it was added by _$UserModelToJson
    data.remove('phone_number');
    data.remove('avatar');


    // Add the nested profile object if there's any profile data
    Map<String, dynamic> profileData = {};
    if (phoneNumber != null) {
      profileData['phone_number'] = phoneNumber;
    }
    if (avatarUrl != null) {
      // Assuming avatarUrl is what DRF expects for update (e.g. if you are not sending a file)
      // If you are sending a file for avatar, this part needs different handling
      profileData['avatar'] = avatarUrl;
    }
    // Include profileId if it's meaningful for your update logic (often not directly updatable)
    // if (profileId != null) {
    //   profileData['id'] = profileId;
    // }


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

