import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/style.dart';
import 'package:linkedin_clone/data/post_model.dart';
import 'package:linkedin_clone/pages/main/home_screen/widgets/user_post_card_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final allPosts = Post.postListData; 

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 100,
      separatorBuilder: (context, index) => Divider(thickness: 10, color: ColorPallette.linkedInLightGreyCACCCE.withOpacity(0.5),),
      itemBuilder: (context, index) => UserPostCardWidget(post: allPosts[index % 5],),
    );
  }
}
