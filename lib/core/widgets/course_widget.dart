import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget(
      {Key? key,
      required this.isCurrent,
      required this.title,
      required this.description,
      required this.isDone,
      required this.imageUrl,
      required this.heroTag})
      : super(key: key);
  final bool isCurrent, isDone;
  final String title, description, imageUrl, heroTag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      width: MediaQuery.of(context).size.width / 2.3,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: const Color(0xfff5f5f5),
          borderRadius: const BorderRadius.all(Radius.circular(10)) +
              const BorderRadius.only(bottomRight: Radius.circular(15))),
      child: Stack(children: [
        SizedBox.expand(
            child: Column(
          children: [
            // image
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Hero(
                transitionOnUserGestures: true,
                tag: heroTag,
                child: Image.network(
                  imageUrl,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fill,
                ),
              ),
            )),
            // titles
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 10,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 17 * MediaQuery.of(context).textScaleFactor,
                      fontWeight: FontWeight.bold,
                      color:
                          isCurrent ? Colors.white : const Color(0xff414865)),
                ),
              ),
            ),
          ],
        )),
        // play button
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CircleAvatar(
              backgroundColor: isDone ? const Color(0xff414865) : Colors.white,
              child: Center(
                  child: Icon(
                isDone ? Icons.done : Icons.play_arrow,
                color: isDone ? Colors.white : const Color(0xff414865),
              )),
            ),
          ),
        )
      ]),
    );
  }
}
