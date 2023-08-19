// screens/grid_view_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart/grid_controller.dart';

class GridViewScreen extends StatelessWidget {
  final int m;
  final int n;
  final GridController gridController = Get.put(GridController());

  GridViewScreen(this.m, this.n);

  @override
  Widget build(BuildContext context) {
    gridController.initializeGrid(m, n);

    return Scaffold(
      appBar: AppBar(title: Text("Word Search Grid")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  gridController.searchAndHighlight(value);
                },
                decoration: InputDecoration(labelText: "Search Text"),
              ),
              Obx(() => Flexible(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: n),
                      itemCount: m * n,
                      itemBuilder: (context, index) {
                        int row = index ~/ n;
                        int col = index % n;
                        return Obx(
                          () => Container(
                            color: gridController.isHighlighted(row, col)
                                ? Colors.red
                                : Colors.white,
                            child: Center(
                                child: Text(
                                    gridController.getGridValue(row, col))),
                          ),
                        );
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
