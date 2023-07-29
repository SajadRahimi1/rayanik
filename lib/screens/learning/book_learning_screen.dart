import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class BookLearningScreen extends StatelessWidget {
  const BookLearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screensAppBar(title: 'pdf یا کتاب'),
      body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              childAspectRatio: .8,
              mainAxisSpacing: 15,
              mainAxisExtent: Get.height / 3.5),
          itemCount: 10,
          itemBuilder: (_, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 3,
                child: SizedBox(
                  width: Get.width,
                  height: Get.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/pictures/images/book.jpg",
                        width: Get.width,
                        height: Get.height / 5,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                          width: Get.width,
                          child: Text(
                            "مادام بوآری",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: Get.width / 24),
                          )),
                      SizedBox(
                          width: Get.width,
                          child: Text(
                            "گوستاو فلوبر",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: Get.width / 27,
                                color: Color(0xff5f5f5f)),
                          )),
                    ],
                  ),
                ),
              )),
    );
  }
}
