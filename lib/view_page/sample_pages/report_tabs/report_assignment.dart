

import 'package:eschool/constants/colors.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportAssign extends StatelessWidget {
  const ReportAssign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<double> total =[2,1];
    int total_marks=50;
    int obtained_marks =40;


    Map<String, double> dataMap = {
      "submitted": total[0],
      "pending": total[1],
    };
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Total Assignment -> ${total.reduce((a, b) => a+b)}',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold)),
          Container(
            width: 365.w,
            height: 150.h,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: Colors.grey.withOpacity(0.3)
                )
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  children: [
                    PieChart(
                      colorList: [
                        pre_color,
                        abs_color
                      ],
                      chartValuesOptions: ChartValuesOptions(
                        showChartValues: false,
                      ),
                      legendOptions: LegendOptions(
                        showLegends: false
                      ),
                      chartRadius: 90.sp,
                      ringStrokeWidth: 8.w,
                      chartType: ChartType.ring,
                      dataMap: dataMap,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: pre_color,
                                borderRadius: BorderRadius.circular(100)
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text('Submitted: ${total[0].round()}',style: TextStyle(color: Colors.black,fontSize: 20.sp)),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: abs_color,
                                  borderRadius: BorderRadius.circular(100)
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text('Pending: ${total[1].round()}',style: TextStyle(color: Colors.black,fontSize: 20.sp)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text('Total Marks -> ${total_marks}',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold)),
          Container(
            width: 365.w,
            height: 120.h,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: Colors.grey.withOpacity(0.3)
                  )
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Obtained: ${obtained_marks}',style: TextStyle(color: Colors.black,fontSize: 20.sp)),
                    Text('Percentage: ${(obtained_marks/total_marks)*100}%',style: TextStyle(color: Colors.black,fontSize: 20.sp))
                  ],
                )
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text('Total Points',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold)),
          Container(
            width: 365.w,
            height: 100.h,
            child: Card(
              elevation: 0,
              color: Colors.grey.withOpacity(0.3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: Colors.grey.withOpacity(0.3)
                  )
              ),
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Points : ${obtained_marks} / ${total_marks}',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                      Text('Solve given sums',style: TextStyle(color: Colors.black,fontSize: 15.sp))
                    ],
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
