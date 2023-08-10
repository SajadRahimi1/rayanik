import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/core/widgets/widgets_list.dart';

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
              const WidgetsList(
                title: "تازه ترین ها",
              ),
              const SizedBox(
                height: 20,
              ),
              const WidgetsList(title: "برگزیده ها"),
              const SizedBox(
                height: 20,
              ),
              const WidgetsList(title: "بیشترین دانلود")
            ],
          )),
    );
  }
}
