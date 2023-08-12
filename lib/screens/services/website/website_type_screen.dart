import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/screens/services/website/web_price_screen.dart';

class WebsiteTypeScreen extends StatelessWidget {
  const WebsiteTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screensAppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
          onTap: () => Get.to(() => const WebPriceScreen()),
          child: Container(
            margin: const EdgeInsets.all(10),
            width: Get.width,
            height: Get.height / 4.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xffe9bcac)),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "طراحی تعرفه های سایت فروشگاهی",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color(0xffffffff),
                      fontSize: 19 * MediaQuery.of(context).textScaleFactor),
                )),
                SizedBox(
                  height: Get.height,
                  width: Get.width / 2.5,
                  child: Image.asset("assets/pictures/images/web.png"),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: Get.height / 10,
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: Get.width,
          height: Get.height / 4.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffe9bcac)),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "طراحی سایت شرکتی",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xffffffff),
                    fontSize: 19 * MediaQuery.of(context).textScaleFactor),
              )),
              SizedBox(
                height: Get.height,
                width: Get.width / 2.5,
                child: Image.asset("assets/pictures/images/web.png"),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
