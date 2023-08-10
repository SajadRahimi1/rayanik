import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/constants/colors.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/core/widgets/widgets_list.dart';

class BookHomeScreen extends StatelessWidget {
  const BookHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xfff0f3f5),
          appBar: screensAppBar(),
          body: ListView(
            children: [
              Image.asset(
                "assets/pictures/images/ebook-banner.png",
                width: Get.width,
                height: Get.height / 4,
                fit: BoxFit.fill,
              ),
              SizedBox( 
                height: 20,
              ),
              WidgetsList(
                title: "تازه ترین ها",
              ),
              SizedBox(
                height: 20,
              ),
              WidgetsList(title: "برگزیده ها"),
              SizedBox(
                height: 20,
              ),
              WidgetsList(title: "بیشترین دانلود")
            ],
          )),
    );
  }
}
