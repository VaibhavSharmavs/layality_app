import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:vaibhav_projects/constants/constants.dart';
import 'package:vaibhav_projects/models/login/login_response_model.dart';

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

  Future<LoginResponseModel> login(Map<String, dynamic> json) async {
    Response response;
    var dio = Dio();
    log(baseURL + authentication + authenticate);
    response = await dio.post(baseURL + authentication + authenticate, data: json);
    log(response.data.toString());
    LoginResponseModel loginResponseModel = LoginResponseModel.fromJson(response.data);
    log('TOKENNNN${loginResponseModel.data!.token.toString()}');

    return loginResponseModel;
  }
}
