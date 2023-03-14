





import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/sample_pages/subject_samples/chapters.dart';
import 'package:eschool/view_page/sample_pages/subject_samples/announcements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Subjects extends StatefulWidget {
  const Subjects({Key? key}) : super(key: key);

  @override
  State<Subjects> createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 220.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                color: Color(0xff205578)
            ),

          ),
          Positioned(
            left: 15.w,
            top:40.h,
            child: IconButton(
                onPressed: (){
                  Get.back();
                },
                icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Text('Subject',style: TextStyle(color: Colors.white,fontSize: 25.sp),),
                SizedBox(
                    height: 40.h
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
                      Tab(text: 'Chapters',),

                      Tab(text: 'Announcement'),


                    ]
                ),
                SizedBox(
                  height: 25.h,
                ),

                Container(
                  height: MediaQuery.of(context).size.height*3.9/6,
                  // color: Colors.red,
                  child: TabBarView(
                    controller: _tabController,
                      children: [
                        Chapters(),
                        Announcements()
                      ]),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
