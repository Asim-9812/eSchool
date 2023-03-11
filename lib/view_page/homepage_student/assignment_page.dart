


import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/sample_pages/assignments_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssignmentPage extends StatefulWidget {

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 150.h,
                ),
                Container(
                  height: 720.h,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        AssignmentTabs(),
                        AssignmentTabs(),
                      ],
                    ),
                  )
                )
              ],
            ),
          ),

          Container(
            height: 220.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.vertical(bottom:Radius.circular(25))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Assignments',style:TextStyle(color: Colors.white,fontSize: 30.sp,fontWeight: FontWeight.bold)),
                TabBar(

                    controller: _tabController,
                    padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 30.w),

                    labelStyle: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                    unselectedLabelStyle: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                    isScrollable: true,
                    labelPadding: EdgeInsets.only(left: 15.w, right: 15.w),
                    labelColor: primary,
                    unselectedLabelColor: Colors.white,
                    // indicatorColor: primary,
                    indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    tabs: [
                      Tab(text: 'Assigned',),
                      Tab(text: 'Submitted'),


                    ]
                )

              ],
            )
          )
        ],
      )
    );
  }
}
