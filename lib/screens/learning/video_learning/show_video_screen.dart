import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class ShowVideoScreen extends StatelessWidget {
  const ShowVideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screensAppBar(),
      body: Column(children: [
        Container(
          width: Get.width,
          height: Get.height / 3,
          color: Colors.cyan,
        )
      ]),
    );
  }
}
