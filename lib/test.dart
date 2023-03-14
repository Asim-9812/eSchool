

import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  double num = 0;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('orientation')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Create a grid with 2 columns in portrait mode, or 3 columns in
            // landscape mode.
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
