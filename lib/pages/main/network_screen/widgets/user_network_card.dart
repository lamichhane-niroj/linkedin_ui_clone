import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/style.dart';
import 'package:linkedin_clone/data/network_model.dart';

class UserNetworkCard extends StatelessWidget {
  const UserNetworkCard({super.key, required this.networkEntity});

  final NetworkEntity networkEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                decoration: const BoxDecoration(
                    color: ColorPallette.linkedInLightGreyCACCCE),
                child: Image.asset(
                  networkEntity.userBgImage!,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 55,
              ),
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  networkEntity.username!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  networkEntity.userBio!,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: ColorPallette.linkedInMediumGrey86888A),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Based on your profile",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: ColorPallette.linkedInMediumGrey86888A),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: ColorPallette.linkedInBlue0077B5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "Connect",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ColorPallette.linkedInBlue0077B5),
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: 110,
              height: 110,
              decoration: const BoxDecoration(
                  color: ColorPallette.linkedInMediumGrey86888A,
                  shape: BoxShape.circle),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    networkEntity.userProfileImage!,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 2.0, top: 2.0),
              child: Icon(
                Icons.cancel,
                size: 30,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          )
        ],
      ),
    );
  }
}
