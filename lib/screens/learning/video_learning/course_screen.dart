import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:rayanik/core/widgets/course_widget.dart';
import 'package:rayanik/screens/learning/video_learning/download_files_screen.dart';
import 'package:rayanik/screens/learning/video_learning/show_video_screen.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    RxInt tabSelected = 0.obs;
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              // top of screen
              Container(
                padding: const EdgeInsets.all(
                  15,
                ),
                width: Get.width,
                height: Get.height / 3,
                decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(35))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // app bar
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back,
                                color: Color(0xffffffff)),
                            onPressed: () => Get.back(),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17, vertical: 6),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 0.3),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text(
                              "برنامه نویسی",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ]),
                    const Spacer(),
                    //title
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              22 * MediaQuery.of(context).textScaleFactor),
                    ),
                    SizedBox(
                      height: Get.height / 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(child: SizedBox()),
                        const Icon(Icons.access_time, color: Colors.white),
                        Text(
                          " 3 هفته",
                          style: TextStyle(
                              fontSize:
                                  16 * MediaQuery.of(context).textScaleFactor,
                              color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // progress bar
                    Container(
                      width: Get.width,
                      padding: EdgeInsets.only(right: (Get.width / 10) * 2),
                      height: 4,
                      decoration: BoxDecoration(
                          color: const Color(0xff0C83F1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        width: Get.width,
                        height: 4,
                        decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),

                    SizedBox(
                      height: Get.height / 30,
                    ),
                  ],
                ),
              ),

              // reset of screen
              SizedBox(
                width: Get.width,
                height: Get.height / 10,
                child: TabBar(
                    isScrollable: false,
                    labelColor: Colors.white,
                    unselectedLabelColor: const Color(0xff3C4158),
                    onTap: (index) => tabSelected.value = index,
                    indicatorColor: Colors.white,
                    // indicatorColor: Color(0xff414865),
                    tabs: List.generate(
                        3,
                        (index) => Obx(
                              () => tabSelected.value == index
                                  ? Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: Get.width / 22,
                                          vertical: 7),
                                      decoration: BoxDecoration(
                                          color: const Color(0xff414865),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: SizedBox(
                                        child: Text(
                                          '\t' +
                                              [
                                                "درس ها",
                                                "نظرات",
                                                "فایل ها"
                                              ][index] +
                                              '\t',
                                          maxLines: 1,
                                        ),
                                      ),
                                    )
                                  : Text(
                                      ["درس ها", "نظرات", "فایل ها"][index],
                                      maxLines: 1,
                                    ),
                            ))),
              ),
              // pages
              Expanded(
                  child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                    // courses screen
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "هفته اول",
                                style: TextStyle(
                                    fontSize: 19 *
                                        MediaQuery.of(context).textScaleFactor),
                              ),
                              // Text(
                              //   "همه",
                              //   style: TextStyle(
                              //       color: Colors.grey,
                              //       fontSize: 16 *
                              //           MediaQuery.of(context).textScaleFactor),
                              // ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: Get.width,
                            height: Get.height / 3.8,
                            child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) => InkWell(
                                    onTap: () => Get.to(() => ShowVideoScreen(
                                          courseIndex: "درس ${index + 1}",
                                          title: "رگرسیون خطی تک متغیر",
                                        )),
                                    child: CourseWidget(
                                        isCurrent: index == 1,
                                        title: "درس ${index + 1}",
                                        description: "توضیحات درس ${index + 1}",
                                        isDone: index == 0))),
                          ),

                          // second week
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "هفته دوم",
                                style: TextStyle(
                                    fontSize: 19 *
                                        MediaQuery.of(context).textScaleFactor),
                              ),
                              // Text(
                              //   "همه",
                              //   style: TextStyle(
                              //       color: Colors.grey,
                              //       fontSize: 16 *
                              //           MediaQuery.of(context).textScaleFactor),
                              // ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: Get.width,
                            height: Get.height / 3.8,
                            child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) => CourseWidget(
                                    isCurrent: false,
                                    title: "درس ${index + 1}",
                                    description: "توضیحات درس ${index + 1}",
                                    isDone: false)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(),

                    // files tab screen
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "هفته اول",
                                style: TextStyle(
                                    fontSize: 19 *
                                        MediaQuery.of(context).textScaleFactor),
                              ),
                              // Text(
                              //   "همه",
                              //   style: TextStyle(
                              //       color: Colors.grey,
                              //       fontSize: 16 *
                              //           MediaQuery.of(context).textScaleFactor),
                              // ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: Get.width,
                            height: Get.height / 3.8,
                            child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) => InkWell(
                                      onTap: () => Get.to(
                                          () => const DownloadFilesScreen()),
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        width: Get.width / 2.3,
                                        height: Get.height,
                                        decoration: BoxDecoration(
                                            color: const Color(0xffefefef),
                                            borderRadius: const BorderRadius
                                                    .all(Radius.circular(10)) +
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(15))),
                                        child: Column(
                                          children: [
                                            // image
                                            Expanded(
                                                child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.asset(
                                                "assets/pictures/images/video_test.png",
                                                width: Get.width,
                                                height: Get.height,
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                            // titles
                                            Expanded(
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 4, right: 10),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        // title text
                                                        Text(
                                                          "درس ${index + 1}"
                                                              .toPersianDigit(),
                                                          style: TextStyle(
                                                              fontSize: 17 *
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaleFactor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: const Color(
                                                                  0xff414865)),
                                                        ),
                                                        // second text
                                                        Text(
                                                          "رگرسیون خطی تک متغیر",
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                              fontSize: 15 *
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaleFactor,
                                                              color: const Color(
                                                                  0xff414865)),
                                                        ),
                                                      ],
                                                    ))),
                                          ],
                                        ),
                                      ),
                                    )),
                          ),

                          // second week
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "هفته دوم",
                                style: TextStyle(
                                    fontSize: 19 *
                                        MediaQuery.of(context).textScaleFactor),
                              ),
                              // Text(
                              //   "همه",
                              //   style: TextStyle(
                              //       color: Colors.grey,
                              //       fontSize: 16 *
                              //           MediaQuery.of(context).textScaleFactor),
                              // ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          SizedBox(
                            width: Get.width,
                            height: Get.height / 3.8,
                            child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) => Container(
                                      margin: const EdgeInsets.only(left: 5),
                                      width: Get.width / 2.3,
                                      height: Get.height,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffefefef),
                                          borderRadius: const BorderRadius.all(
                                                  Radius.circular(10)) +
                                              const BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(15))),
                                      child: Column(
                                        children: [
                                          // image
                                          Expanded(
                                              child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.asset(
                                              "assets/pictures/images/video_test.png",
                                              width: Get.width,
                                              height: Get.height,
                                              fit: BoxFit.cover,
                                            ),
                                          )),

                                          // titles
                                          Expanded(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, right: 10),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      // title text
                                                      Text(
                                                        "درس ${index + 1}"
                                                            .toPersianDigit(),
                                                        style: TextStyle(
                                                            fontSize: 17 *
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaleFactor,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: const Color(
                                                                0xff414865)),
                                                      ),
                                                      // second text
                                                      Text(
                                                        "رگرسیون خطی تک متغیر",
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 15 *
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaleFactor,
                                                            color: const Color(
                                                                0xff414865)),
                                                      ),
                                                    ],
                                                  ))),
                                        ],
                                      ),
                                    )),
                          )
                        ],
                      ),
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
