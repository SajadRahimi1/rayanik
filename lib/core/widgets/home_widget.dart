import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rayanik/core/constants/colors.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget(
      {Key? key,
      required this.lottiesAsset,
      required this.title,
      this.height,
      this.onTap})
      : super(key: key);
  final String lottiesAsset, title;
  final double? height;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? MediaQuery.of(context).size.height / 4.8,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: const Color(0xfff5f5f5)
            color: goldColor.withOpacity(0.8)),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3.8,
                  // height: Get.height / 10,
                  child: Lottie.asset(lottiesAsset, fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }
}
