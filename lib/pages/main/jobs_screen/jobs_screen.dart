import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:linkedin_clone/constants/style.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _jobsTopItems(title: "My jobs", icon: Icons.bookmark_border),
              _jobsTopItems(title: "Preferences", icon: FontAwesomeIcons.edit),
              _jobsTopItems(
                  title: "Post a free job", icon: FontAwesomeIcons.edit),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Divider(
            color: ColorPallette.linkedInLightGreyCACCCE.withOpacity(0.5),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * Recommended Section
                const Text(
                  "Find your next role",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildRecommendedJobsList(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Divider(
            color: ColorPallette.linkedInLightGreyCACCCE.withOpacity(0.3),
            thickness: 10,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * More Jobs for you Section
                const Text(
                  "More jobs for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildMoreJobsForYouList(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildRecommendedJobsList() {
    return Column(
      children: [
        SizedBox(
          height: 380,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: ColorPallette.linkedInLightGreyCACCCE
                            .withOpacity(.6),
                      ),
                      child: const Icon(
                        Icons.home_work,
                        size: 50,
                        color: ColorPallette.linkedInMediumGrey86888A,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Flutter developer",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.close,
                                size: 30,
                                color: Colors.black,
                              )
                            ],
                          ),
                          const Text(
                            "Asterisk Digital",
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Transform.rotate(
                                angle: -0.60,
                                child: const Icon(
                                  Icons.send,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Message the job poster directly",
                                style: TextStyle(
                                    fontSize: 13,
                                    color:
                                        ColorPallette.linkedInMediumGrey86888A),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          RichText(
                            text: const TextSpan(
                                text: "14 hours ago",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                                children: [
                                  TextSpan(
                                      text: " . Easy Apply",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: ColorPallette
                                              .linkedInMediumGrey86888A))
                                ]),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Divider(
                            color: ColorPallette.linkedInMediumGrey86888A
                                .withOpacity(.3),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              }),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Show all",
              style: TextStyle(
                  fontSize: 18,
                  color: ColorPallette.linkedInMediumGrey86888A,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward,
              size: 25,
              color: Colors.black,
            )
          ],
        )
      ],
    );
  }

  _buildMoreJobsForYouList() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: ColorPallette.linkedInLightGreyCACCCE.withOpacity(.6),
                ),
                child: const Icon(
                  Icons.home_work,
                  size: 50,
                  color: ColorPallette.linkedInMediumGrey86888A,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Job Title",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.close,
                          size: 30,
                          color: Colors.black,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Company name",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.a,
                          size: 30,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Actively recruiting",
                          style: TextStyle(
                              fontSize: 12,
                              color: ColorPallette.linkedInMediumGrey86888A),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "Promoted - ",
                          style: TextStyle(
                              fontSize: 12,
                              color: ColorPallette.linkedInMediumGrey86888A),
                          children: [
                            TextSpan(
                                text: "2 applicants",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.green))
                          ]),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      color: ColorPallette.linkedInMediumGrey86888A,
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }

  _jobsTopItems({String? title, IconData? icon}) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border:
            Border.all(width: 1, color: ColorPallette.linkedInLightGreyCACCCE),
      ),
      child: Center(
        child: Text(
          "$title",
          style: const TextStyle(
              color: ColorPallette.linkedInMediumGrey86888A,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
