import 'package:get/get_connect/http/src/response/response.dart';
import 'package:rayanik/core/constants/urls.dart';
import 'package:rayanik/core/services/get_connect_service.dart';

Future<Response<dynamic>> getCourses() async {
  return await getConnect.get(getCoursesUrl);
}
