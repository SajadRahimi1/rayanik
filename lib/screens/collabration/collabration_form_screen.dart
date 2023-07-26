import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/constants/colors.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/core/widgets/custom_text_input.dart';
// import 'package:persian_datetime_picker/persian_datetime_picker.dart' as picker;

class CollabrationFormScreen extends StatelessWidget {
  const CollabrationFormScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List educationStrings = [
      "سیکل",
      "دیپلم",
      "فوق دیپلم",
      "لیسانس",
      "فوق لیسانس",
      "دکترا",
    ];
    RxInt education = (-1).obs;
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

            // birthday text input
            CustomTextInput(
                text: "تاریخ تولد",
                enable: false,
                // controller: _controller.textEditingController[2],
                ontap: () async {
                  // picker.Jalali? picked =
                  //     await picker.showPersianDatePicker(
                  //   context: context,
                  //   initialDate: picker.Jalali.now(),
                  //   firstDate: picker.Jalali(1330, 8),
                  //   lastDate: picker.Jalali.now(),
                  // );
                  // if (picked != null) {
                  //   // _controller.birthday.value = picked.formatCompactDate();
                  //   _controller.textEditingController[2].text =
                  //       picked.formatCompactDate();
                  //   _controller.userModel?.birthday =
                  //       picked.formatCompactDate();
                  // }
                },
                icon: const Icon(
                  Icons.calendar_month,
                )),
            SizedBox(
              height: Get.height / 35,
            ),

            // education
            SizedBox(
              width: Get.width,
              height: Get.height / 10,
              child: Row(
                children: [
                  const Text("میزان تحصیلات : ",
                      style: TextStyle(fontSize: 14)),
                  Expanded(
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) => InkWell(
                                onTap: () => education.value = index,
                                child: Obx(() => Container(
                                      width: Get.width / 5.5,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 3,
                                          vertical: Get.height / 80),
                                      height: Get.height,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: education.value == index
                                              ? Colors.green
                                              : const Color(0xffe5e5e5)),
                                      child: Text(
                                        educationStrings[index],
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    )),
                              )))
                ],
              ),
            ),
            SizedBox(
              height: Get.height / 35,
            ),

            // city
            CustomTextInput(
              // controller: _controller.textEditingController[6],
              text: "شهر محل سکونت",
              icon: const Icon(Icons.pin_drop),
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
              text: "شماره تلفن همراه",
              icon: const Icon(Icons.phone_android),
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
                    color: darkGoldColor),
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
