import 'package:linkedin_clone/constants/assets_const.dart';

class Post {
  // image, description, createdat, likes, comment, repost, username, userprofile, userbio
  final String? username;
  final String? userProfile;
  final String? userBio;
  final String? createAt;
  final String? description;
  final String? postImage;
  final List<String>? tags;
  final List<String>? postImages;
  final num? totalReacts;
  final num? totalComments;
  final num? totalReposts;

  Post(
      {this.username,
      this.userProfile,
      this.userBio,
      this.createAt,
      this.description,
      this.postImage,
      this.tags,
      this.postImages,
      this.totalReacts,
      this.totalComments,
      this.totalReposts});

  static List<Post> postListData = [
    Post(
        userProfile: AssetConst.PROFILE_1,
        username: "John Doe",
        userBio:
            "Full-Stack Flutter Developer, Firebase Expert | Youtuber | Blogger",
        createAt: "1w",
        description:
            "Some common mistakes that flutter developer make while learning flutter.",
        postImage: "post_image_1.jpg",
        postImages: [
          AssetConst.POST_IMAGE_1,
          AssetConst.POST_IMAGE_2,
          AssetConst.POST_IMAGE_3
        ],
        tags: [
          "#code",
          "#flutterdevelopment",
          "#flutterui",
          "#fluttermafia",
          "#ullstackdeveloper",
          "#fluttercode",
          "#iosdeveloper"
        ],
        totalReacts: 5,
        totalComments: 10,
        totalReposts: 4),
    Post(
        userProfile: AssetConst.PROFILE_2,
        username: "Doug Stevenson",
        userBio: "MERN-STACK Developer, REST APIs | Entrepreneur | Blogger",
        createAt: "1m",
        description:
            "Look at this javascript code I don't believe it what kind of people are living in this world haha",
        postImage: AssetConst.POST_IMAGE_1,
        postImages: [],
        tags: [
          "#javascript",
          "#mernstackdev",
          "#development",
          "#developers",
          "#html",
          "#css",
          "#laravel"
        ],
        totalReacts: 10,
        totalComments: 44,
        totalReposts: 11),
    Post(
        userProfile: AssetConst.PROFILE_1,
        username: "Carig C. Watson",
        userBio: "Software Developer at Google #GDE",
        createAt: "2w",
        description:
            "Hey Folks!\nGoogle Devs. just released this new feature in Search Engine check it out.",
        postImage: "post_image_3.jpg",
        postImages: [
          AssetConst.POST_IMAGE_5,
          AssetConst.POST_IMAGE_2,
          AssetConst.POST_IMAGE_3,
          AssetConst.POST_IMAGE_1,
          AssetConst.POST_IMAGE_4,
        ],
        tags: [
          "#gde",
          "#googledevexpert",
          "#iosdevelopment",
          "#android",
          "#androidsummit",
          "#googlestudentsclub",
          "#growwithgoogle"
        ],
        totalReacts: 111,
        totalComments: 12,
        totalReposts: 20),
    Post(
        userProfile: AssetConst.PROFILE_2,
        username: "Diana Joe",
        userBio: "UX/UI Researcher | Product Manager at IBM",
        createAt: "4d",
        description:
            "Just look at this!\nthis man lost control and he's trying to find peace but unfortunately he's unable to find.",
        postImage: "post_image_4.jpg",
        postImages: [
           AssetConst.POST_IMAGE_5,
 AssetConst.POST_IMAGE_2,
 AssetConst.POST_IMAGE_1,
        ],
        tags: [
          "#gde",
          "#googledevexpert",
          "#iosdevelopment",
          "#android",
          "#androidsummit",
          "#googlestudentsclub",
          "#growwithgoogle"
        ],
        totalReacts: 4,
        totalComments: 8,
        totalReposts: 17),
    Post(
        userProfile: AssetConst.PROFILE_1,
        username: "Alexander Graham Bell",
        userBio: "Inventor | Developer | Mobile Founder",
        createAt: "1d",
        description:
            "What's up people\nLook at this Alexander got something new to show you.",
        postImage: "post_image_5.jpg",
        postImages: [],
        tags: [
          "#gde",
          "#googledevexpert",
          "#iosdevelopment",
          "#android",
          "#androidsummit",
          "#googlestudentsclub",
          "#growwithgoogle"
        ],
        totalReacts: 4,
        totalComments: 8,
        totalReposts: 17),
  ];
}
