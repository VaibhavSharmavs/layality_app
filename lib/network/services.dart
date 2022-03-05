import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:vaibhav_projects/constants/constants.dart';

class Repository {
  void getPointsSummary() async {
    Response response;
    var dio = Dio();
    log(baseURL + customers + pointSummary + '/102');
    response = await dio.get(
      baseURL + customers + pointSummary + '/102',
    );
    log(response.data.toString());
  }

  void getPointDetails() async {
    Response response;
    var dio = Dio();
    log(baseURL + customers + pointSummary + '/102');
    response = await dio.get(
      baseURL + customers + pointDetails + '/102',
    );
    log(response.data.toString());
  }

  void login(Map<String, dynamic> json) async {
    Response response;
    var dio = Dio();
    log(baseURL + authentication + authenticate);
    response = await dio.post(baseURL + authentication + authenticate, data: {
      "userId": 0,
      "userName": "L004",
      "password": "pass@123",
      "otp": "string"
    });
    log(response.data.toString());
  }
}
