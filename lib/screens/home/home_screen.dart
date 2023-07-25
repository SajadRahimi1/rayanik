import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: Get.height / 40,
            ),
            Container(
              width: Get.width,
              height: Get.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/pictures/images/banner.png",
                      ))),
            )
         
            ,Expanded(child: GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder))
          ],
        ),
      ),
    );
  }
}
