


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:eschool/view_page/routine.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> with TickerProviderStateMixin{



  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height:20.h
          ),
          Text('Time Table',style : TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,color: Colors.white)),
          SizedBox(
              height:80.h
          ),
          Container(
            width: 300.w,
            height: 70.h,
            child: Card(
              elevation: 3,
              child: Center(
                child: Text('Class 9-A',style: TextStyle(fontSize: 25.sp),)
              ),

            ),
          ),

          Container(
            height: 50.h,
            width: 280.h,
            child: TabBar(

                controller: _tabController,
                isScrollable: true,
                labelPadding: EdgeInsets.only(left: 15.w, right: 15.w),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blueAccent,
                indicatorColor: Colors.blue,
                indicator: BoxDecoration(
                  color: Colors.blue
                ),
              tabs: [
                Tab(text: 'MON',),
                Tab(text: 'TUE'),
                Tab(text: 'WED'),
                Tab(text: 'THU'),
                Tab(text: 'FRI'),

              ]
            )
          ),

          SizedBox(
            height: 10.h,
          ),


          Container(
            width: 300.w,
            height: 500.h,
            child: TabBarView(
              controller: _tabController,
              children:[
                Routine(),
                Routine(),
                Routine(),
                Routine(),
                Routine(),
              ]
            ),
          )





        ],
      ),
    );
  }
}
