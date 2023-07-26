import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class LearningMenuScreen extends StatelessWidget {
  const LearningMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screensAppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          margin: EdgeInsets.all(10),
          width: Get.width,
          height: Get.height / 4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffe9bcac)),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "آموزش ویدیویی",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffffffff), fontSize: Get.width / 18),
              )),
              SizedBox(
                height: Get.height,
                width: Get.width / 2,
                child: SvgPicture.asset("assets/pictures/images/video.svg"),
              )
            ],
          ),
        ),

        // podcast
        Container(
          margin: EdgeInsets.all(10),
          width: Get.width,
          height: Get.height / 4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffe9bcac)),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "پادکست",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffffffff), fontSize: Get.width / 16),
              )),
              SizedBox(
                height: Get.height,
                width: Get.width / 1.8,
                child: SvgPicture.asset("assets/pictures/images/podcast.svg"),
              )
            ],
          ),
        ),

        // book
        Container(
          margin: EdgeInsets.all(10),
          width: Get.width,
          height: Get.height / 4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffe9bcac)),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "pdf یا کتاب",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffffffff), fontSize: Get.width / 16),
              )),
              SizedBox(
                height: Get.height,
                width: Get.width / 1.8,
                child: SvgPicture.asset("assets/pictures/images/book.svg"),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
