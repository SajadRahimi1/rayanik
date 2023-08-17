import 'package:get/get.dart';
import 'package:rayanik/core/services/course_service.dart' as service;
import 'package:rayanik/core/services/message_service.dart';
import 'package:rayanik/models/models/course_model.dart';

class CourseViewModel extends GetxController with StateMixin {
  List<CourseModel> courses = [];
  List<String> categories = ["web", "application", "programming", "design"];

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getData();
  }

  Future<void> getData() async {
    final _request = await service.getCourses();
    if (_request.statusCode == 200) {
      courses = List<CourseModel>.from(
          _request.body.map((x) => CourseModel.fromJson(x)));
      change(null, status: RxStatus.success());
    } else {
      change(null, status: RxStatus.error(_request.body));
      networkErrorMessage();
    }
  }

  List<CourseModel> getByCategory(int index) => courses
      .where((element) => element.category == categories[index])
      .toList();
}
