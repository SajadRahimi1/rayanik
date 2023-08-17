import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rayanik/core/widgets/course_widget.dart';
import 'package:rayanik/models/models/course_model.dart';
import 'package:rayanik/screens/learning/video_learning/show_video_screen.dart';

class LessonWidget extends StatelessWidget {
  const LessonWidget({
    Key? key,
    required this.lessonsLength,
    required this.lessons,
  }) : super(key: key);
  final int lessonsLength;
  final List<Lessons> lessons;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "هفته ${lessonsLength + 1}",
              style: TextStyle(
                  fontSize: 19 * MediaQuery.of(context).textScaleFactor),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height / 3.8,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: lessons.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => InkWell(
                    onTap: () =>
                        Get.to(() => ShowVideoScreen(lesson: lessons[index])),
                    child: CourseWidget(
                        isCurrent: false,
                        title: lessons[index].title ?? "",
                        imageUrl: lessons[index].imageUrl ?? "",
                        heroTag: lessons[index].id ?? "",
                        description: "",
                        isDone: false),
                  )),
        )
      ],
    );
  }
}
