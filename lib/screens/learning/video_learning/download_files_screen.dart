import 'package:flutter/material.dart';
import 'package:rayanik/core/widgets/appbar_widget.dart';

class DownloadFilesScreen extends StatelessWidget {
  const DownloadFilesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: screensAppBar(),
    ));
  }
}
