

import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/homepage_student/menu_items/attendance_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/exam_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/holidays_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/parent_profile.dart';
import 'package:eschool/view_page/homepage_student/menu_items/notice_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/report_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/result_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/timetable_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/settings_page.dart';
import 'package:eschool/view_page/login_pages/parent_login.dart';
import 'package:eschool/view_page/login_pages/student_page.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icon_decoration/icon_decoration.dart';

class MenuPage extends StatefulWidget {

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  double boxX= 0;
  double boxY= 10;



  @override
  void initState() {
    super.initState();
    // Rebuild the screen after 3s which will process the animation from green to blue
    Future.delayed(Duration(milliseconds: 100)).then((value) => setState(() {
      boxX = 0;
      boxY = 1;
    }));

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: 392.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:20.w,vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back,color: Colors.black,size: 25.sp,)),
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.sp,
                        child: Icon(Icons.person,size:40.sp,color: Colors.grey)
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:8.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Username',style:TextStyle(fontSize: 25.sp,color: Colors.black,),),
                          Text('Class : 9 A | Roll No : 9',style:TextStyle(fontSize: 15.sp,color: Colors.grey),)
                        ],
                      ),
                    )
                  ],
                ),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 30.sp,)
              ],
            ),
          ),
          Divider(
            thickness: 1.h,
            color: Colors.grey.withOpacity(0.7),
            height: 15.h,
            indent: 20.w,
            endIndent: 20.w,
          ),
            GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.9),
                ),
                children: [
                  Column(
                    children: [
                      GridTile(
                        child: InkWell(
                          onTap: (){
                            Get.to(()=>Attendance());
                          },
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Color(0xffbbedd7),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                                child:Image.asset('assets/icons/attendance.png',width: 50.w,height: 50.h,)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                        child:  Text('Attendance',style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GridTile(
                        child: InkWell(
                          onTap: (){
                            Get.to(()=>TimeTable());
                          },
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Color(0xffbbedd7),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                                child:Image.asset('assets/icons/timetable.png',width: 60.w,height: 50.h,)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                        child: Text('Timetable',style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GridTile(
                        child: InkWell(
                          onTap: (){
                            Get.to(()=>NoticeBoard());
                          },
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Color(0xffbbedd7),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                                child:Image.asset('assets/icons/noticeboard.png',width: 60.w,height: 50.h,)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                        child: Text('Notice Board',style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GridTile(
                        child: InkWell(
                          onTap: (){
                            Get.to(()=>Examination());
                          },
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Color(0xffbbedd7),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                                child:Image.asset('assets/icons/exam.png',width: 60.w,height: 50.h,)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                        child: Text('Exam',style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GridTile(
                        child: InkWell(
                          onTap: (){
                            Get.to(()=>ResultPage());
                          },
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Color(0xffbbedd7),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                                child:Image.asset('assets/icons/result.png',width: 60.w,height: 50.h,)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                        child: Text('Result',style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GridTile(
                        child: InkWell(
                          onTap: (){
                            Get.to(()=>ReportPage());
                          },
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Color(0xffbbedd7),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                                child:Image.asset('assets/icons/report.png',width: 60.w,height: 50.h,)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                        child: Text('Report',style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GridTile(
                        child: InkWell(
                          onTap: (){
                            Get.to(()=>ParentsProfile());
                          },
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Color(0xffbbedd7),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                                child:Image.asset('assets/icons/parents.png',width: 60.w,height: 50.h,)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                        child: Text('Parent Profile',style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GridTile(
                        child: InkWell(
                          onTap: (){
                            Get.to(()=>Holidays());
                          },
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Color(0xffbbedd7),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                                child:Image.asset('assets/icons/holiday.png',width: 60.w,height: 50.h,)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                        child: Text('Holidays',style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GridTile(
                        child: InkWell(
                          onTap: (){
                            Get.to(()=>Settings());
                          },
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Color(0xffbbedd7),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                                child:Image.asset('assets/icons/settings.png',width: 60.w,height: 50.h,)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                        child: Text('Settings',style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),


                ]),




        ],
      ),
    );
  }
}
