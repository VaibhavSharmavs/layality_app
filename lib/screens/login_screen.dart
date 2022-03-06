import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vaibhav_projects/screens/loyality_points_screen.dart';
import 'package:vaibhav_projects/state_management/loyality_points_state_mgmt.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoyaltyPointsState loyaltyPointsState = LoyaltyPointsState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('LOGIN',style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
                style: const TextStyle(fontSize: 15, color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }
                  return null;
                },
                onChanged: (value) {
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(0),
                    prefixIcon: const Icon(Icons.account_box_rounded),
                    hintText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.grey,)))),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
                style: const TextStyle(fontSize: 15, color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                onChanged: (value) {
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(0),
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.grey,)))),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Forgot Passowrd?',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 10,
                horizontal: 10),
                ),
                  onPressed: (){
                    loyaltyPointsState.login();

              }, child: const Text('Continue',
              style: TextStyle(
                fontSize: 22,

                fontWeight: FontWeight.bold
              ),)),
            )
          ],
        ),
      ),
    );
  }
}
