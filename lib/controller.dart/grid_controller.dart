// controllers/grid_controller.dart
import 'package:get/get.dart';

class GridController extends GetxController {
  List<List<String>> grid = [];
  List<List<bool>> highlightMap = [];

  void initializeGrid(int m, int n) {
    grid.clear();
    highlightMap.clear();
    for (int i = 0; i < m; i++) {
      List<String> row = [];
      List<bool> highlightRow = [];
      for (int j = 0; j < n; j++) {
        row.add(""); // Initialize with empty strings
        highlightRow.add(false);
      }
      grid.add(row);
      highlightMap.add(highlightRow);
    }
  }

  void searchAndHighlight(String searchText) {
    // Implement the search and highlighting logic here
    // Similar to the code in the previous answer
    // Update the highlightMap based on the search results
  }

  bool isHighlighted(int row, int col) {
    return highlightMap[row][col];
  }

  String getGridValue(int row, int col) {
    return grid[row][col];
  }
}
