import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/core/widgets/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
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
            const SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  HomeWidget(
                    title: "استارتآپ",
                    // height: Get.height / 10,
                    lottiesAsset: "assets/pictures/icons/rocket.json",
                  ),
                  HomeWidget(
                    title: "آموزش",
                    // height: Get.height / 10,
                    lottiesAsset: "assets/pictures/icons/learning.json",
                  ),
                  HomeWidget(
                    title: "خدمات",
                    lottiesAsset: "assets/pictures/icons/service.json",
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  HomeWidget(
                    title: "تماس با ما",
                    // height: Get.height / 10,
                    lottiesAsset: "assets/pictures/icons/contact.json",
                  ),
                  HomeWidget(
                    title: "همکاری با ما",
                    // height: Get.height / 10,
                    lottiesAsset: "assets/pictures/icons/collabration.json",
                  ),
                  HomeWidget(
                    title: "بلاگ",
                    // height: Get.height / 10,
                    lottiesAsset: "assets/pictures/icons/blog.json",
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
