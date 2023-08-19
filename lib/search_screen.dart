import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  final List<List<String>> grid;
  SearchScreen(this.grid);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchText = "";
  bool isSearchResultVisible = false;

  void search() {
    // Implement search logic here
    // You need to find the occurrences of searchText in the grid
    // and highlight the corresponding cells
    // Update isSearchResultVisible accordingly
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Text')),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                searchText = value;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              search();
              setState(() {
                isSearchResultVisible = true;
              });
            },
            child: Text('Search'),
          ),
          // if (isSearchResultVisible)

          // Remove the extra ')' here
        ],
      ),
    );
  }
}
