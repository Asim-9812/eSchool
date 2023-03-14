


import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/homepage_student/default_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eschool/view_page/sample_pages/exam_tabs/exam_tabs.dart';
import 'package:get/get.dart';

class Examination extends StatefulWidget {

  @override
  State<Examination> createState() => _ExaminationState();
}

class _ExaminationState extends State<Examination> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 170.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                color: Color(0xff205578)
            ),

          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                    height:50.h
                ),
                Text('Exams',style : TextStyle(fontSize: 25.sp,color: Colors.white)),

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
                    height: MediaQuery.of(context).size.height*4/6,

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
