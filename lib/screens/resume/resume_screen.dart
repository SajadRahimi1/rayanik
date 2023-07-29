import 'package:flutter/material.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: screensAppBar(),
        body: ListView.builder(
            itemCount: 4,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (_, index) => Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 15),
                  child: Image.asset("assets/pictures/images/${index + 1}.png"),
                )));
  }
}
