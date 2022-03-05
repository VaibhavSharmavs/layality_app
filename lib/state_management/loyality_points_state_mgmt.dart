import 'package:flutter/cupertino.dart';
import 'package:vaibhav_projects/models/login/login_request_model.dart';
import 'package:vaibhav_projects/network/services.dart';

class LoyaltyPointsState extends ChangeNotifier {
  Repository repository = Repository();

  void getPoints() {
    repository.getPointsSummary();
  }

  void getPointDetails() {
    repository.getPointDetails();
  }

  void login() {
    LoginRequestModel loginRequestModel =
         LoginRequestModel(userId: 0,
             userName: 'L004',
             password: 'pass@123',
             otp: 'otp');

    repository.login(loginRequestModel.toJson());
  }
}
