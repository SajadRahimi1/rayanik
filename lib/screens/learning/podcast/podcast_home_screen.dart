import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class BookHomeScreen extends StatelessWidget {
  const BookHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: screensAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10) +
              const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "کتاب های محبوب",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18 * MediaQuery.of(context).textScaleFactor),
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
                              "assets/pictures/images/$index.jpg",
                              fit: BoxFit.fill,
                              width: Get.width,
                              height: Get.height)),
                      options: CarouselOptions(
                          viewportFraction: 0.4,
                          autoPlay: true,
                          height: Get.height / 4,
                          enlargeCenterPage: true)),
                ),
              ),
              Text(
                "دسته بندی ها",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17 * MediaQuery.of(context).textScaleFactor),
              ),
              Expanded(
                  child: Column(
                children: List.generate(
                    4,
                    (index) => InkWell(
                          // onTap: () => Get.to(
                          //     () => CourseScreen(
                          //           title: [
                          //             "طراحی وب و سئو",
                          //             "اپلیکیشن",
                          //             "برنامه نویسی",
                          //             "طراحی"
                          //           ][index],
                          //         ),
                          //     transition: Transition.leftToRight),
                          child: Row(
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
                                      "داستان و رمان",
                                      "تاریخ",
                                      "علوم",
                                      "کودک"
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
                          ),
                        )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
