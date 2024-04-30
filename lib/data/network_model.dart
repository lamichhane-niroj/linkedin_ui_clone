import 'package:linkedin_clone/constants/assets_const.dart';

class NetworkEntity {
  final String? userBgImage;
  final String? userProfileImage;
  final String? username;
  final String? userBio;
  final num? mutualConnections;

  NetworkEntity(
      {this.userBgImage,
      this.userProfileImage,
      this.username,
      this.userBio,
      this.mutualConnections});

  static List<NetworkEntity> networkData = [
    NetworkEntity(
      userBgImage: AssetConst.BG_IMAGE_1,
      userProfileImage: AssetConst.PROFILE_1,
      mutualConnections: 13,
      userBio: "Flutter Developer & Advocate",
      username: "John Doe",
    ),
    NetworkEntity(
      userBgImage: AssetConst.BG_IMAGE_2,
      userProfileImage: AssetConst.PROFILE_2,
      mutualConnections: 22,
      userBio: "Senior Software Engineer",
      username: "Carig C. Watson",
    ),
    NetworkEntity(
      userBgImage: AssetConst.BG_IMAGE_1,
      userProfileImage: AssetConst.PROFILE_1,
      mutualConnections: 52,
      userBio: "UX/UI Researcher & Designer",
      username: "Diana Joe",
    ),
    NetworkEntity(
      userBgImage: AssetConst.BG_IMAGE_3,
      userProfileImage: AssetConst.PROFILE_1,
      mutualConnections: 13,
      userBio: "Android Developer at Google",
      username: "Stephan Covey",
    ),
    NetworkEntity(
      userBgImage: AssetConst.BG_IMAGE_1,
      userProfileImage: AssetConst.PROFILE_1,
      mutualConnections: 88,
      userBio: "Flutter Developer & Advocate",
      username: "Elon Musk",
    ),
    NetworkEntity(
      userBgImage: AssetConst.BG_IMAGE_2,
      userProfileImage: AssetConst.PROFILE_1,
      mutualConnections: 11,
      userBio: "Flutter Developer & Advocate",
      username: "Robert Frost",
    ),
    NetworkEntity(
      userBgImage: AssetConst.BG_IMAGE_3,
      userProfileImage: AssetConst.PROFILE_2,
      mutualConnections: 13,
      userBio: "Flutter Developer & Advocate",
      username: "Steve Wozniak",
    ),
    NetworkEntity(
      userBgImage: AssetConst.BG_IMAGE_3,
      userProfileImage: AssetConst.PROFILE_1,
      mutualConnections: 76,
      userBio: "Flutter Developer & Advocate",
      username: "Doug Stevenson",
    ),
  ];
}
