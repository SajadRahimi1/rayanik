import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/constants/colors.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/core/widgets/custom_text_input.dart';
// import 'package:persian_datetime_picker/persian_datetime_picker.dart' as picker;

class StartupFormScreen extends StatelessWidget {
  const StartupFormScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: screensAppBar(context: context, title: "اطلاعات شخصی"),
        body: Column(
          // physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: Get.height / 35,
            ),
            // name text input
            CustomTextInput(
              // controller: _controller.textEditingController[0],
              text: "نام و نام خانوادگی",
              icon: const Icon(
                Icons.person,
              ),
              onChanged: (value) {
                // _controller.userModel?.name = value;
              },
            ),
            SizedBox(
              height: Get.height / 35,
            ),

            // city
            CustomTextInput(
              // controller: _controller.textEditingController[6],
              text: "زمینه فعالیت",
              icon: const Icon(Icons.local_activity),
              onChanged: (value) {
                // _controller.userModel?.address = value;
              },
            ),
            SizedBox(
              height: Get.height / 35,
            ),

            // phone number
            CustomTextInput(
              // controller: _controller.textEditingController[7],
              text: "سرمایه مورد نیاز",
              icon: const Icon(Icons.money),
              keyboardType: TextInputType.number,
              maxLength: 11,
              onChanged: (value) {
                // _controller.userModel?.phoneNumber = value;
              },
            ),
            SizedBox(
              height: Get.height / 35,
            ),

            // phone number
            CustomTextInput(
              // controller: _controller.textEditingController[7],
              text: "تخمین سود",
              icon: const Icon(Icons.calculate),
              keyboardType: TextInputType.number,
              maxLength: 11,
              onChanged: (value) {
                // _controller.userModel?.phoneNumber = value;
              },
            ),
            const Spacer(),
            // button
            InkWell(
              onTap: () async {},
              child: Container(
                width: Get.width,
                height: Get.height / 11,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: goldColor),
                child: Text(
                  "ثبت اطلاعات",
                  style: TextStyle(
                      color: const Color(0xffffffff), fontSize: Get.width / 22),
                ),
              ),
            ),
          ],
        ));
  }
}
