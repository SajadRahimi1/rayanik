import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/core/widgets/widgets_list.dart';
import 'package:rayanik/screens/learning/ebook/book_learning_screen.dart';

class BookHomeScreen extends StatelessWidget {
  const BookHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xfff0f3f5),
          appBar: screensAppBar(),
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Image.asset(
                "assets/pictures/images/ebook-banner.png",
                width: Get.width,
                height: Get.height / 4,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 20,
              ),
              WidgetsList(
                title: "تازه ترین ها",
                onAllClicked: () => Get.to(() =>const BookLearningScreen()),
              ),
              const SizedBox(
                height: 20,
              ),
              WidgetsList(
                title: "برگزیده ها",
                onAllClicked: () => Get.to(() =>const BookLearningScreen()),
              ),
              const SizedBox(
                height: 20,
              ),
              WidgetsList(
                title: "بیشترین دانلود",
                onAllClicked: () => Get.to(() =>const BookLearningScreen()),
              )
            ],
          )),
    );
  }
}
