import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rayanik/core/constants/colors.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget(
      {Key? key, required this.lottiesAsset, required this.title, this.height})
      : super(key: key);
  final String lottiesAsset, title;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height / 4.8,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // color: const Color(0xfff5f5f5)
          color: goldColor),
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width / 3.8,
              // height: Get.height / 10,
              child: Lottie.asset(lottiesAsset)),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(title),
          )
        ],
      ),
    );
  }
}
