import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:linkedin_clone/constants/assets_const.dart';
import 'package:linkedin_clone/constants/style.dart';
import 'package:linkedin_clone/data/post_model.dart';

class UserPostCardWidget extends StatelessWidget {
  const UserPostCardWidget({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header section
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(post.userProfile!),
                  radius: 26,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: post.username!,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  children: const [
                                TextSpan(
                                  text: " . Following",
                                  style: TextStyle(
                                      color: ColorPallette
                                          .linkedInMediumGrey86888A,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ])),
                          const Spacer(),
                          GestureDetector(
                            onTap: () => _showMenuItem(context),
                            child: const Icon(
                              Icons.more_vert,
                              size: 22,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            child: const Icon(
                              Icons.close,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0),
                        child: Text(
                          post.userBio!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          Text("${post.createAt} . ",
                              style: const TextStyle(
                                  fontSize: 12,
                                  color:
                                      ColorPallette.linkedInMediumGrey86888A)),
                          const Icon(
                            FontAwesomeIcons.earthAmericas,
                            color: ColorPallette.linkedInMediumGrey86888A,
                            size: 14,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  post.description!,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(children: [
                  for (var i = 0; i < post.tags!.length; i++)
                    Text(
                      "${post.tags![i]} ",
                      style: const TextStyle(
                          color: ColorPallette.linkedInBlue0077B5),
                    )
                ]),
              ],
            ),
          ),

          // body section
          post.postImages!.isEmpty
              ? Container(
                  height: 400,
                  margin: const EdgeInsets.only(bottom: 12),
                  width: double.infinity,
                  color: ColorPallette.linkedInMediumGrey86888A,
                  child: Image.asset(
                    AssetConst.POST_IMAGE_3,
                    height: 400,
                    fit: BoxFit.fill,
                  ),
                )
              : SizedBox(
                  height: 400,
                  child: PageView.builder(
                    itemCount: post.postImages!.length,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      color: ColorPallette.linkedInMediumGrey86888A,
                      child: Stack(
                        children: [
                          Image.asset(post.postImages![index],
                              height: 400,
                              width: double.infinity,
                              fit: BoxFit.fill),
                          Positioned(
                            right: 15,
                            top: 15,
                            child: Container(
                              alignment: Alignment.center,
                              height: 22,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                  color: ColorPallette.linkedInDarkGrey313335),
                              child: Text(
                                "${index + 1}/${post.postImages!.length}",
                                style:const TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

          // like + comment + repost count section
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Positioned(
                child: _singleReactItemWidget(
                    bgColor: Colors.blue.shade200, image: AssetConst.THUMBS_UP),
              ),
              Positioned(
                left: 16,
                child: _singleReactItemWidget(
                    bgColor: Colors.red.shade200, image: AssetConst.LOVE),
              ),
              Positioned(
                left: 34,
                child: _singleReactItemWidget(
                    bgColor: Colors.amber.shade200,
                    image: AssetConst.INSIGHTFUL),
              ),
              Positioned(
                left: 65,
                child: Text(post.totalReacts.toString()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${post.totalComments} comments . ",
                    style: const TextStyle(
                        color: ColorPallette.linkedInMediumGrey86888A,
                        fontSize: 15),
                  ),
                  Text(
                    "${post.totalReposts} reposts",
                    style: const TextStyle(
                        color: ColorPallette.linkedInMediumGrey86888A,
                        fontSize: 15),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(),

          // like + comment + repost + send section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _singleActionItemWidget(
                  icon: Icons.thumb_up_alt_outlined, title: "Like"),
              _singleActionItemWidget(
                  icon: FontAwesomeIcons.commentDots, title: "Comment"),
              _singleActionItemWidget(
                  icon: FontAwesomeIcons.retweet, title: "Repost"),
              _singleActionItemWidget(
                  icon: FontAwesomeIcons.paperPlane, title: "Send"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _singleReactItemWidget({String? image, Color? bgColor}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          border:
              Border.all(width: 2, color: ColorPallette.linkedInWhiteFFFFFF)),
      child: Image.asset(
        image!,
        width: 10,
        height: 10,
      ),
    );
  }

  Widget _singleActionItemWidget({IconData? icon, String? title}) {
    return Column(
      children: [
        Icon(
          icon,
          color: ColorPallette.linkedInMediumGrey86888A,
        ),
        Text(
          "$title",
          style: const TextStyle(color: ColorPallette.linkedInMediumGrey86888A),
        )
      ],
    );
  }

  _showMenuItem(BuildContext context) {
    showModalBottomSheet(
        enableDrag: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            height: 350,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
              color: ColorPallette.linkedInWhiteFFFFFF,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 70,
                      height: 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorPallette.linkedInMediumGrey86888A),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  _bottomNavigationItem(
                      title: "Save", iconData: Icons.bookmark_border),
                  const SizedBox(
                    height: 30,
                  ),
                  _bottomNavigationItem(
                      title: "Share via", iconData: Icons.share),
                  const SizedBox(
                    height: 30,
                  ),
                  _bottomNavigationItem(
                      title: "See fewer posts like this",
                      iconData: Icons.visibility_off),
                  const SizedBox(
                    height: 30,
                  ),
                  _bottomNavigationItem(
                      title: "Unfollow Dhaval Patel", iconData: Icons.cancel),
                  const SizedBox(
                    height: 30,
                  ),
                  _bottomNavigationItem(
                      title: "Report post", iconData: Icons.flag),
                ],
              ),
            ),
          );
        });
  }

  _bottomNavigationItem({IconData? iconData, String? title}) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 25,
          color: ColorPallette.linkedInMediumGrey86888A,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "$title",
          style: const TextStyle(
              fontSize: 16,
              color: ColorPallette.linkedInMediumGrey86888A,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
