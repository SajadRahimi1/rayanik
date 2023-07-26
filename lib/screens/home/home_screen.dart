import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/core/widgets/home_widget.dart';
import 'package:rayanik/screens/collabration/collabration_form_screen.dart';
import 'package:rayanik/screens/learning/learning_menu_screen.dart';
import 'package:rayanik/screens/services/services_menu_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: homeAppBar(),
        body: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset(
                "assets/pictures/images/backimg.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: Get.width / 1.05,
                height: Get.height / 1.2,
                child: Image.asset(
                  "assets/pictures/images/back.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    // Container(
                    //   width: Get.width,
                    //   height: Get.height / 3.5,
                    // ),
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(15),
                    //       image: const DecorationImage(
                    //           fit: BoxFit.fill,
                    //           image: AssetImage(
                    //             "assets/pictures/images/banner.png",
                    //           ))),
                    // ),
                    // // const SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const HomeWidget(
                            title: "استارتآپ",
                            // height: Get.height / 10,
                            lottiesAsset: "assets/pictures/icons/rocket.json",
                          ),
                          HomeWidget(
                            onTap: () => Get.to(
                                () => const LearningMenuScreen(),
                                transition: Transition.leftToRight),
                            title: "آموزش",
                            // height: Get.height / 10,
                            lottiesAsset: "assets/pictures/icons/learning.json",
                          ),
                          HomeWidget(
                            onTap: () => Get.to(() => const ServiceMenuScreen(),
                                transition: Transition.leftToRight),
                            title: "خدمات",
                            lottiesAsset: "assets/pictures/icons/service.json",
                          ),
                        ]),
                    const Spacer(
                      flex: 1,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const HomeWidget(
                            title: "نمونه کار ها",
                            // height: Get.height / 10,
                            lottiesAsset: "assets/pictures/icons/resume2.json",
                          ),
                          HomeWidget(
                            onTap: () => Get.to(
                                () => const CollabrationFormScreen(),
                                transition: Transition.leftToRight),
                            title: "همکاری با ما",
                            // height: Get.height / 10,
                            lottiesAsset:
                                "assets/pictures/icons/collabration.json",
                          ),
                          const HomeWidget(
                            title: "بلاگ",
                            // height: Get.height / 10,
                            lottiesAsset: "assets/pictures/icons/blog.json",
                          ),
                        ]),
                    const Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const HomeWidget(
                            title: "تماس با ما",
                            // height: Get.height / 10,
                            lottiesAsset: "assets/pictures/icons/contact.json",
                          ),
                          HomeWidget(
                            onTap: () => Get.to(
                                () => const CollabrationFormScreen(),
                                transition: Transition.leftToRight),
                            title: "درباره ما",
                            // height: Get.height / 10,
                            lottiesAsset: "assets/pictures/icons/aboutus.json",
                          ),
                        ]),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
