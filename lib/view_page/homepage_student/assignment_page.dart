


import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/sample_pages/assignments_tabs/assignments_tabs.dart';
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
      body: Column(
        children: [

          Container(
              height: MediaQuery.of(context).size.height * 1.2/5,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.vertical(bottom:Radius.circular(25))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Assignments',style:TextStyle(color: Colors.white,fontSize:25.sp)),
                  SizedBox(
                    height: 10.h,
                  ),
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
                        Tab(text: 'Assigned',),
                        Tab(text: 'Submitted'),


                      ]
                  )

                ],
              )
          ),
          Container(
            // color: Colors.red,
            height: MediaQuery.of(context).size.height *3.8/5,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0.h,horizontal: 15.w),
              child: TabBarView(
                // physics: NeverScrollableScrollPhysics(),

                controller: _tabController,
                children: [
                  AssignmentTabs(),
                  AssignmentTabs(),
                ],
              ),
            )
          ),


        ],
      )
    );
  }
}
