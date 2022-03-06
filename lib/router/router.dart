import 'package:flutter/material.dart';
import 'package:vaibhav_projects/router/routes_constants.dart';
import 'package:vaibhav_projects/screens/loyality_points_screen.dart';

class Router{

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesConstants.homeScreen:
        return MaterialPageRoute(builder: (_) => const LoyaltyPointsScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}