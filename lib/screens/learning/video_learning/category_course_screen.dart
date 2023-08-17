import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';
import 'package:rayanik/models/models/course_model.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:rayanik/screens/learning/video_learning/course_screen.dart';

class CategoryCourseScreen extends StatelessWidget {
  const CategoryCourseScreen(
      {Key? key, required this.title, required this.courses})
      : super(key: key);
  final String title;
  final List<CourseModel> courses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screensAppBar(title: title),
      body: ListView.builder(
          itemCount: courses.length,
          padding: const EdgeInsets.symmetric(horizontal: 10) +
              EdgeInsets.only(top: MediaQuery.sizeOf(context).height / 35),
          itemBuilder: (_, index) => InkWell(
                onTap: () =>
                    Get.to(() => CourseScreen(courseModel: courses[index])),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff5f5f5)),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2.5,
                        height: MediaQuery.sizeOf(context).height,
                        child: Image.network(
                          courses[index].imageUrl ?? "",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 3, right: 8, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            courses[index].title ?? "",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time,
                                color: Colors.cyan,
                              ),
                              Text(
                                '\t' +
                                    courses[index].weeksCount.toString() +
                                    " هفته",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: Text(
                              courses[index].price == null
                                  ? "رایگان"
                                  : courses[index]
                                          .price
                                          .toString()
                                          .seRagham()
                                          .toPersianDigit() +
                                      "تومان",
                              textAlign: TextAlign.end,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: courses[index].price == null
                                      ? Colors.green
                                      : Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ))
                  ]),
                ),
              )),
    );
  }
}
