// screens/grid_input_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'grid_display_screen.dart';

class GridInputScreen extends StatelessWidget {
  final TextEditingController mController = TextEditingController();
  final TextEditingController nController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid Input")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: mController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter m"),
            ),
            TextField(
              controller: nController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter n"),
            ),
            ElevatedButton(
              onPressed: () {
                int m = int.tryParse(mController.text) ?? 0;
                int n = int.tryParse(nController.text) ?? 0;
                if (m > 0 && n > 0) {
                  Get.to(() => GridViewScreen(m, n));
                } else {
                  // Show an error message
                  Get.snackbar("Error", "Please enter valid values for m and n");
                }
              },
              child: Text("Create Grid"),
            ),
          ],
        ),
      ),
    );
  }
}
