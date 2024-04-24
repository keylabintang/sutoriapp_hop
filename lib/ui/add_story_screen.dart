import 'package:flutter/material.dart';

class AddStoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(builder: (BuildContext context, constraints) {
      if (constraints.maxWidth < 600) {
        return ListView(
          children: _generateConstaints(),
        );
      } else if (constraints.maxWidth < 900) {
        return GridView.count(
          crossAxisCount: 2,
          children: _generateConstaints(),
        );
      } else {
        return GridView.count(
          crossAxisCount: 6,
          children: _generateConstaints(),
        );
      }
    }));
  }

  List<Widget> _generateConstaints() {
    return List<Widget>.generate(10, (index) {
      return Container(
        margin: EdgeInsets.all(8),
        color: Colors.blueGrey,
        height: 200,
      );
    });
  }
}
