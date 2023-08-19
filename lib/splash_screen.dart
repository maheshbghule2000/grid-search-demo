// screens/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'grid_input_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Word Search App"),
            ElevatedButton(
              onPressed: () {
                Get.to(() => GridInputScreen());
              },
              child: Text("Start"),
            ),
          ],
        ),
      ),
    );
  }
}
