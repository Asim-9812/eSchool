


import 'package:eschool/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eschool/view_page/sample_pages/exam_tabs/exam_tabs.dart';

class ResultPage extends StatefulWidget {

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Column(
      children: [
        SizedBox(
            height:50.h
        ),
        Text('Result',style : TextStyle(fontSize: 25.sp,color: Colors.white)),

        TabBar(

            controller: _tabController,

            padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 30.w),

            labelStyle: TextStyle(fontSize: 15.sp,),
            unselectedLabelStyle: TextStyle(fontSize: 15.sp,),
            isScrollable: false,
            labelPadding: EdgeInsets.only(left: 15.w, right: 15.w),
            labelColor: primary,
            unselectedLabelColor: Colors.white,
            // indicatorColor: primary,
            indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            tabs: [
              Tab(text: 'Offline',),

              Tab(text: 'Online'),


            ]
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          // color: Colors.red,
            height: 600.h,

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 8.w),
              child: TabBarView(
                controller: _tabController,
                children: [
                  ExamTabs(),
                  ExamTabs(),
                ],
              ),
            )
        )
      ],
    );
  }
}
