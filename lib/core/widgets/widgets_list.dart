import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class WidgetsList extends StatelessWidget {
  const WidgetsList({Key? key, required this.title,this.onAllClicked}) : super(key: key);
  final String title;
  final void Function()? onAllClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: Get.width,
        height: Get.height / 3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17 * MediaQuery.of(context).textScaleFactor),
                  ),
                  InkWell(
                    onTap: onAllClicked,
                    child: Text(
                      "مشاهده همه",
                      style: TextStyle(
                          color: const Color(0xff9f9f9f),
                          fontSize:
                              15 * MediaQuery.of(context).textScaleFactor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: Get.width,
                height: Get.height / 3.9,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 3,
                          child: SizedBox(
                            width: Get.width / 3.4,
                            height: Get.height,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                /**/
                                SizedBox(
                                  width: Get.width,
                                  height: Get.height / 6,
                                  child: Image.asset(
                                    "assets/pictures/images/book.jpg",
                                    width: Get.width,
                                    height: Get.height / 6,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                    width: Get.width,
                                    child: Text(
                                      "مادام بوآری",
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          TextStyle(fontSize: Get.width / 27),
                                    )),
                                SizedBox(
                                    width: Get.width,
                                    child: Text(
                                      "گوستاو فلوبر",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: Get.width / 32,
                                          color: const Color(0xff5f5f5f)),
                                    )),
                              ],
                            ),
                          ),
                        )),
              )
            ]));
  }
}
