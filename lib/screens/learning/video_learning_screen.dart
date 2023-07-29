import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/constants/colors.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class VideoLearningScreen extends StatelessWidget {
  const VideoLearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screensAppBar(title: 'آموزش ویدیویی'),
      // backgroundColor: const Color(0xff070705),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 15,
          padding: const EdgeInsets.all(8),
          itemBuilder: (_, index) => Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xffbc8971), width: 5),
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  width: Get.width,
                  height: Get.height / 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/pictures/images/wordpress.jpg",
                            width: Get.width,
                            height: Get.height / 4.5,
                          ),
                          SizedBox(
                            width: Get.width,
                            child: Text(
                              " آموزش وردپرس صفر تا صد",
                              style: TextStyle(fontSize: Get.width / 25),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer_sharp,
                                    color: goldColor,
                                    size: Get.width / 14,
                                  ),
                                  Text(
                                    " 3:25:00".toPersianDigit(),
                                    style: TextStyle(
                                        color: goldColor,
                                        fontSize: Get.width / 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Text(
                                "رایگان",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: Get.width / 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              )),
    );
  }
}
