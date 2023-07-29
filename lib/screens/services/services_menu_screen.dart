import 'package:flutter/material.dart';
// import 'package:flutter_png/flutter_png.dart';
import 'package:get/route_manager.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class ServiceMenuScreen extends StatelessWidget {
  const ServiceMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screensAppBar(),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(10),
          width: Get.width,
          height: Get.height / 5.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffe9bcac)),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "طراحی وب",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffffffff), fontSize: Get.width / 16),
              )),
              SizedBox(
                height: Get.height,
                width: Get.width / 1.8,
                child: Image.asset("assets/pictures/images/web.png"),
              )
            ],
          ),
        ),

        //app
        Container(
          margin: EdgeInsets.all(10),
          width: Get.width,
          height: Get.height / 5.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffe9bcac)),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "اپلیکیشن",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffffffff), fontSize: Get.width / 16),
              )),
              SizedBox(
                height: Get.height,
                width: Get.width / 1.8,
                child: Image.asset(
                  "assets/pictures/images/app.png",
                ),
              )
            ],
          ),
        ),

        // instagram
        Container(
          margin: EdgeInsets.all(10),
          width: Get.width,
          height: Get.height / 5.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffe9bcac)),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "اینستاگرام",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffffffff), fontSize: Get.width / 16),
              )),
              SizedBox(
                height: Get.height,
                width: Get.width / 1.8,
                child: Image.asset("assets/pictures/images/instagram.png"),
              )
            ],
          ),
        ),

        //support
        Container(
          margin: EdgeInsets.all(10),
          width: Get.width,
          height: Get.height / 5.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffe9bcac)),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "پشتیبانی",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffffffff), fontSize: Get.width / 16),
              )),
              SizedBox(
                height: Get.height,
                width: Get.width / 1.8,
                child: Image.asset("assets/pictures/images/support.png"),
              )
            ],
          ),
        ),

        // advisor
        Container(
          margin: EdgeInsets.all(10),
          width: Get.width,
          height: Get.height / 5.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffe9bcac)),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "مشاوره",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffffffff), fontSize: Get.width / 16),
              )),
              SizedBox(
                height: Get.height,
                width: Get.width / 1.8,
                child: Image.asset("assets/pictures/images/advisor.png"),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
