


import 'dart:convert';

import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/homepage_student/default_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eschool/view_page/sample_pages/routine_samples.dart';
import 'package:get/get.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> with TickerProviderStateMixin{



  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 7, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(

        children: [
          Container(
            width: double.infinity,
            height: 150.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                color: Color(0xff205578)
            ),

          ),
          Center(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height *1/6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                      color: Color(0xff205578)
                  ),
                  child:  Center(
                    child: Text('Time Table',style : TextStyle(fontSize: 30.sp,color: Colors.white)),
                  ),

                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 15.h),
                  child: Container(

                    width: 350.w,
                    height: 60.h,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      color: Colors.white,
                      elevation: 3,
                      child: Center(
                          child: Text('Class 9-A',style: TextStyle(fontSize: 20.sp,color: Colors.black),)
                      ),

                    ),
                  ),
                ),

                Container(
                    height: 50.h,
                    // width: 280.h,
                    child: TabBar(

                        controller: _tabController,
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 15.w, right: 15.w),
                        labelColor: Colors.white,
                        unselectedLabelColor: primary,
                        indicator: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        tabs: [
                          Tab(text: 'MON',),
                          Tab(text: 'TUE'),
                          Tab(text: 'WED'),
                          Tab(text: 'THU'),
                          Tab(text: 'FRI'),
                          Tab(text: 'SAT'),
                          Tab(text: 'SUN'),

                        ]
                    )
                ),

                SizedBox(
                  height: 10.h,
                ),


                Container(
                  width: 350.w,
                  height: MediaQuery.of(context).size.height *3.7/6,
                  child: TabBarView(
                      controller: _tabController,
                      children:[
                        Routine(),
                        Routine(),
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
          ),
          Positioned(
            left: 15.w,
            top:40.h,
            child: IconButton(
                onPressed: (){
                  Get.to(()=>DefaultPage());
                },
                icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
            ),
          ),
        ],
      ),
    );
  }
}