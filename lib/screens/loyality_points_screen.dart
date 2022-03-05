import 'package:flutter/material.dart';
import 'package:vaibhav_projects/state_management/loyality_points_state_mgmt.dart';

class LoyaltyPointsScreen extends StatefulWidget {
  const LoyaltyPointsScreen({Key? key}) : super(key: key);

  @override
  State<LoyaltyPointsScreen> createState() => _LoyaltyPointsState();
}

class _LoyaltyPointsState extends State<LoyaltyPointsScreen> {
  LoyaltyPointsState loyaltyPointsState = LoyaltyPointsState();

  @override
  void initState() {
    loyaltyPointsState.getPoints();
    loyaltyPointsState.getPointDetails();
    loyaltyPointsState.login();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Points'),
      ),
    );
  }
}
