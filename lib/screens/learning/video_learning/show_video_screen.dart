import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class ShowVideoScreen extends StatelessWidget {
  const ShowVideoScreen(
      {Key? key, required this.title, required this.courseIndex})
      : super(key: key);
  final String title;
  final String courseIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screensAppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: Get.width,
          height: Get.height / 3,
          color: Colors.cyan,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15) +
                EdgeInsets.only(top: Get.height / 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseIndex,
                  style: TextStyle(
                      fontSize: 19 * MediaQuery.of(context).textScaleFactor),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22 * MediaQuery.of(context).textScaleFactor),
                ),
                const SizedBox(
                  height: 35,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(
                    "بیایید اعتراف کنیم، همه ما آن روزها را داشتیم که وارد یک گفتگوی همسالان شدیم فقط برای اینکه متوجه شویم آنها با شور و اشتیاق در مورد یک مدل یادگیری ماشینی جدیدی که به کار گرفته بودند صحبت می کردند و به آنها کمک می کرد تا مسائل جذاب و گاهی اوقات مشکلات را به موجوداتی با هوش واگذار کنند. و بگذار حدس بزنم، تو چیزی نگرفتی. علاوه بر این، شما روزانه توسط مجموعه‌ای از کلمات عجیب و غریب و ناشناخته مانند رگرسیون، طبقه‌بندی، خوشه‌بندی، شبکه‌های عصبی، یادگیری عمیق، SVM و غیره بمباران می‌شوید. اما، شما فردی کنجکاو هستید و به موضوعاتی که نمی‌فهمید علاقه دارید و از لذتی که با تشخیص و درک آنها به دست می آورید، شکوفا شوید. اگر این شما هستید، در جای مناسبی هستید.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 16 * MediaQuery.of(context).textScaleFactor),
                  ),
                ))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
