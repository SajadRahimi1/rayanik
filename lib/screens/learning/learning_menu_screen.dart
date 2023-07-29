import 'package:flutter/material.dart';
// import 'package:flutter_png/png.dart';
import 'package:get/route_manager.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/screens/learning/book_learning_screen.dart';
import 'package:rayanik/screens/learning/podcast_learning_screen.dart';
import 'package:rayanik/screens/learning/video_learning_screen.dart';

class LearningMenuScreen extends StatelessWidget {
  const LearningMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screensAppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(
          onTap: () => Get.to(() => const VideoLearningScreen(),
              transition: Transition.leftToRight),
          child: Container(
            margin: const EdgeInsets.all(10),
            width: Get.width,
            height: Get.height / 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xffe9bcac)),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "آموزش ویدیویی",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color(0xffffffff), fontSize: Get.width / 18),
                )),
                SizedBox(
                  height: Get.height,
                  width: Get.width / 2,
                  child: Image.asset("assets/pictures/images/video.png"),
                )
              ],
            ),
          ),
        ),

        // podcast
        InkWell(
          onTap: () => Get.to(() => const PodcastLearningScreen(),
              transition: Transition.leftToRight),
          child: Container(
            margin:const EdgeInsets.all(10),
            width: Get.width,
            height: Get.height / 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:const Color(0xffe9bcac)),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "پادکست",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color(0xffffffff), fontSize: Get.width / 16),
                )),
                SizedBox(
                  height: Get.height,
                  width: Get.width / 1.8,
                  child: Image.asset("assets/pictures/images/podcast.png"),
                )
              ],
            ),
          ),
        ),

        // book
        InkWell(
          onTap: () => Get.to(() => const BookLearningScreen(),
              transition: Transition.leftToRight),
          child: Container(
            margin: const EdgeInsets.all(10),
            width: Get.width,
            height: Get.height / 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xffe9bcac)),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "pdf یا کتاب",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color(0xffffffff), fontSize: Get.width / 16),
                )),
                SizedBox(
                  height: Get.height,
                  width: Get.width / 1.8,
                  child: Image.asset("assets/pictures/images/book.png"),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
