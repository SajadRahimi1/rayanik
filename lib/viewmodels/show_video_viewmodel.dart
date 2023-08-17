import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart' show BuildContext;
import 'package:get/get.dart';
import 'package:rayanik/models/models/course_model.dart';

class ShowVideoViewModel extends GetxController with StateMixin {
  ShowVideoViewModel({required this.context, required this.lessonsModel});
  final Lessons lessonsModel;
  final BuildContext context;

 

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
   
  }
}
