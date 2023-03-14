


import 'package:eschool/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Teacher extends StatefulWidget {

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*2/5,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 170.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                        color: Color(0xff205578)
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*2/5,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text('Profile',style : TextStyle(fontSize: 20.sp,color: Colors.white)),
                        SizedBox(
                          height: 65.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 55.sp,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 50.sp,
                                child: Icon(Icons.person,size:40.sp,color: Colors.grey),
                              )
                          ),
                        ),
                        Text('Teacher',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.sp),),
                        Divider(
                          thickness: 1.h,
                          height: 30.h,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              // color: Colors.red,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Personal Detail',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primary,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('E-mail',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                            Text('-',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primary,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Phone Number',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                            Text('-',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),

                    Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primary,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date of Birth',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                            Text('-',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primary,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Gender',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                            Text('-',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primary,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Qualification',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                            Text('-',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primary,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Current Address',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                            Text('-',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primary,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Permanent Address',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                            Text('-',style: TextStyle(color: Colors.black,fontSize: 18.sp),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80.h,
                    ),

                  ],
                ),
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
          ],
        ),
      ),
    );
  }
}
