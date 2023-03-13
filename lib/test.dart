

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
    Map<String, double> dataMap = {
      "Flutter": num,
      "React": 3,
      "Xamarin": 2,
      "Ionic": 2,
    };

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            PieChart(
                chartType: ChartType.ring,
                dataMap: dataMap,
            ),

            IconButton(
                onPressed: (){

                  num+=1;

                }, icon: Icon(Icons.add,color: Colors.black,))

          ],
        ),
      ),
    );
  }
}
