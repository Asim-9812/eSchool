

import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/homepage_student/assignment_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/attendance_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/exam_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/holidays_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/report_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/result_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/timetable_page.dart';
import 'package:eschool/view_page/sample_pages/fees_sample.dart';
import 'package:eschool/view_page/sample_pages/teachers_sample.dart';
import 'package:eschool/view_page/login_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MenuParents extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
                ),
                child: Center(child: Text('Menu',style: TextStyle(color: Colors.white,fontSize: 30.sp,),)),
              ),

              Center(
                child: Container(
                  width: 350.w,
                  height: 670.h,
                  // color: Colors.red,
                  child: ListView(
                    padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 0.w),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Colors.black
                            )
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                            onTap: ()=>Get.to(()=>AssignmentPage()),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffbbedd7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                          child:Image.asset('assets/icons/assignments.png',width: 50.w,height: 50.h,)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    Text('Assignments',style:TextStyle(color: Colors.black)),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.black
                              )
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                            onTap: ()=>Get.to(()=>TeacherPage()),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffbbedd7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                          child:Image.asset('assets/icons/teachers.png',width: 50.w,height: 50.h,)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    Text('Teachers',style:TextStyle(color: Colors.black)),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.black
                              )
                          ),
                          child: ListTile(
                            onTap: ()=>Get.to(()=>Attendance()),
                            contentPadding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffbbedd7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                          child:Image.asset('assets/icons/attendance.png',width: 50.w,height: 50.h,)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    Text('Attendance',style:TextStyle(color: Colors.black)),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.black
                              )
                          ),
                          child: ListTile(
                            onTap: ()=>Get.to(()=>TimeTable()),
                            contentPadding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffbbedd7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                          child:Image.asset('assets/icons/timetable.png',width: 50.w,height: 50.h,)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    Text('Timetable',style:TextStyle(color: Colors.black)),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.black
                              )
                          ),
                          child: ListTile(
                            onTap: ()=>Get.to(()=>Holidays()),
                            contentPadding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffbbedd7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                          child:Image.asset('assets/icons/holiday.png',width: 50.w,height: 50.h,)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    Text('Holidays',style:TextStyle(color: Colors.black)),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.black
                              )
                          ),
                          child: ListTile(
                            onTap: ()=>Get.to(()=>Examination()),
                            contentPadding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffbbedd7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                          child:Image.asset('assets/icons/exam.png',width: 50.w,height: 50.h,)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    Text('Exams',style:TextStyle(color: Colors.black)),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.black
                              )
                          ),
                          child: ListTile(
                            onTap: ()=>Get.to(()=>ResultPage()),
                            contentPadding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffbbedd7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                          child:Image.asset('assets/icons/result.png',width: 50.w,height: 50.h,)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    Text('Results',style:TextStyle(color: Colors.black)),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.black
                              )
                          ),
                          child: ListTile(
                            onTap: ()=>Get.to(()=>ReportPage()),
                            contentPadding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffbbedd7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                          child:Image.asset('assets/icons/report.png',width: 50.w,height: 50.h,)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    Text('Report',style:TextStyle(color: Colors.black)),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.black
                              )
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                            onTap: ()=>Get.to(()=>FeePage()),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffbbedd7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                          child:Image.asset('assets/icons/fees.png',width: 50.w,height: 50.h,)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    Text('Fees',style:TextStyle(color: Colors.black)),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                              ],
                            ),
                          ),
                        ),
                      ),








                    ],
                  ),
                ),
              ),

            ],
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

        ],
      ),
    );
  }
}
