import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoHomeLearning extends StatelessWidget {
  const VideoHomeLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10) +
              EdgeInsets.only(top: Get.height / 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "دوره های محبوب",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19 * MediaQuery.of(context).textScaleFactor),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: Get.height / 45),
                child: SizedBox(
                  width: Get.width,
                  height: Get.height / 4,
                  child: CarouselSlider(
                      items: List.generate(
                          3,
                          (index) => Image.asset(
                              "assets/pictures/images/learning-banner.png",
                              fit: BoxFit.fill,
                              width: Get.width,
                              height: Get.height)),
                      options: CarouselOptions(
                          autoPlay: true,
                          height: Get.height / 4,
                          enlargeCenterPage: true)),
                ),
              ),
              Text(
                "\nدسته بندی ها",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19 * MediaQuery.of(context).textScaleFactor),
              ),
              Expanded(
                  child: Column(
                children: List.generate(
                    4,
                    (index) => Row(
                          children: [
                            Image.asset(
                              "assets/pictures/images/${[
                                "web-design",
                                "application",
                                "programming",
                                "ui"
                              ][index]}.png",
                              height: Get.height / 8,
                              width: Get.width / 3.5,
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  [
                                    "طراحی وب و سئو",
                                    "اپلیکیشن",
                                    "برنامه نویسی",
                                    "طراحی"
                                  ][index],
                                  style: TextStyle(
                                      fontSize: 17 *
                                          MediaQuery.of(context)
                                              .textScaleFactor),
                                ),
                                Text(
                                  "8 آموزش",
                                  style: TextStyle(
                                      color: const Color(0xff9f9f9f),
                                      fontSize: 13 *
                                          MediaQuery.of(context)
                                              .textScaleFactor),
                                ),
                              ],
                            )
                          ],
                        )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
