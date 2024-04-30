import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/style.dart';
import 'package:linkedin_clone/data/network_model.dart';
import 'package:linkedin_clone/pages/main/network_screen/widgets/user_network_card.dart';

class NetworkScreen extends StatelessWidget {
  NetworkScreen({super.key});

  final _allNetwork = NetworkEntity.networkData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Manage my network",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorPallette.linkedInMediumGrey86888A,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 8,
            color: ColorPallette.linkedInLightGreyCACCCE.withOpacity(.5),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Invitations",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorPallette.linkedInMediumGrey86888A,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 8,
            color: ColorPallette.linkedInLightGreyCACCCE.withOpacity(.5),
          ),
          const SizedBox(
            height: 15,
          ),
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 9,
                crossAxisSpacing: 9,
                childAspectRatio: 0.6),
            itemBuilder: (context, index) {
              return UserNetworkCard(networkEntity: _allNetwork[index % 8],);
            },
          )
        ],
      ),
    );
  }
}
