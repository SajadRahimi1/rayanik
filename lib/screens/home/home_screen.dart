import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: Get.height / 40,
            ),
            Container(
              width: Get.width,
              height: Get.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/pictures/images/banner.png",
                      ))),
            ),
            SizedBox(height: Get.height / 18),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                  width: Get.width / 4,
                  // height: Get.height / 10,
                  child: Lottie.asset(
                    "assets/pictures/icons/rocket.json",
                  )),
              SizedBox(
                  width: Get.width / 3,
                  // height: Get.height / 10,
                  child: Lottie.asset(
                    "assets/pictures/icons/learning.json",
                  )),
              SizedBox(
                  width: Get.width / 3,
                  // height: Get.height / 10,
                  child: Lottie.asset(
                    "assets/pictures/icons/service.json",
                  )),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              SizedBox(
                  width: Get.width / 2,
                  // height: Get.height / 10,
                  child: Lottie.asset(
                    "assets/pictures/icons/aboutus.json",
                  )),
              SizedBox(
                  width: Get.width / 3,
                  // height: Get.height / 10,
                  child: Lottie.asset(
                    "assets/pictures/icons/contact.json",
                  )),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              SizedBox(
                  width: Get.width / 3,
                  // height: Get.height / 10,
                  child: Lottie.asset(
                    "assets/pictures/icons/collabration.json",
                  )),
              SizedBox(
                  width: Get.width / 4,
                  // height: Get.height / 10,
                  child: Lottie.asset(
                    "assets/pictures/icons/jobs.json",
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
