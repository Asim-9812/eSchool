


import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/homepage_parents/menu_parents.dart';
import 'package:eschool/view_page/sample_pages/profile_samples/sample_profile.dart';
import 'package:eschool/view_page/sample_pages/subject_samples/subjects_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StudentOverview extends StatefulWidget {

  @override
  State<StudentOverview> createState() => _StudentOverviewState();
}

class _StudentOverviewState extends State<StudentOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 200.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
                ),
                child: InkWell(
                  onTap: ()=>Get.to(()=>StudentProfile()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      CircleAvatar(
                        radius: 30.sp,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person,color: Colors.grey,size: 30.sp,),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text('Name',style: TextStyle(color: Colors.white,fontSize: 20.sp,),),

                      Text('Class',style: TextStyle(color: Colors.white,fontSize: 15.sp,),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                  height: 450.h,
                  width: 350.w,
                  // color: Colors.red,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 2.w/2.4.h,
                        crossAxisCount: 3, mainAxisSpacing: 5.h,crossAxisSpacing: 5.w),
                    children: [
                      Column(

                        children: [
                          GridTile(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: ()=> Get.to(()=>Subjects()),
                                child: Container(
                                    height: 90.h,
                                    width: 90.w,
                                    color: Colors.lightBlueAccent,
                                    child: Center(child: Image.asset('assets/icons/maths.png',width: 50.w,height: 50.h))
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                            child: Text('Math',style: TextStyle(color: Colors.black),),
                          )
                        ],
                      ),
                      Column(

                        children: [
                          GridTile(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: ()=> Get.to(()=>Subjects()),
                                child: Container(
                                    height: 90.h,
                                    width: 90.w,
                                    color: Colors.redAccent,
                                    child: Center(child: Image.asset('assets/icons/science.png',width: 50.w,height: 50.h))
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                            child: Text('Science',style: TextStyle(color: Colors.black),),
                          )
                        ],
                      ),
                      Column(

                        children: [
                          GridTile(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: ()=> Get.to(()=>Subjects()),
                                child: Container(
                                    height: 90.h,
                                    width: 90.w,
                                    color: Colors.orangeAccent,
                                    child: Center(child: Image.asset('assets/icons/english.png',width: 50.w,height: 50.h))
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                            child: Text('English',style: TextStyle(color: Colors.black),),
                          )
                        ],
                      ),
                      Column(

                        children: [
                          GridTile(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: ()=> Get.to(()=>Subjects()),
                                child: Container(
                                    height: 90.h,
                                    width: 90.w,
                                    color: Colors.deepPurpleAccent,
                                    child: Center(child: Image.asset('assets/icons/accounting.png',width: 50.w,height: 50.h))
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                            child: Text('Account',style: TextStyle(color: Colors.black),),
                          )
                        ],
                      ),
                      Column(

                        children: [
                          GridTile(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: ()=> Get.to(()=>Subjects()),
                                child: Container(
                                    height: 90.h,
                                    width: 90.w,
                                    color: Colors.blue,
                                    child: Center(child: Image.asset('assets/icons/computer.png',width: 50.w,height: 50.h))
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                            child: Text('Computer',style: TextStyle(color: Colors.black),),
                          )
                        ],
                      ),
                      Column(

                        children: [
                          GridTile(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: ()=> Get.to(()=>Subjects()),
                                child: Container(
                                    height: 90.h,
                                    width: 90.w,
                                    color: Colors.pinkAccent,
                                    child: Center(child: Image.asset('assets/icons/drawing.png',width: 50.w,height: 50.h))
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                            child: Text('Drawing',style: TextStyle(color: Colors.black),),
                          )
                        ],
                      ),
                      Column(

                        children: [
                          GridTile(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: ()=> Get.to(()=>Subjects()),
                                child: Container(
                                    height: 90.h,
                                    width: 90.w,
                                    color: Colors.deepOrangeAccent,
                                    child: Center(child: Image.asset('assets/icons/music.png',width: 50.w,height: 50.h))
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                            child: Text('Music',style: TextStyle(color: Colors.black),),
                          )
                        ],
                      ),

                    ],
                  )
              )
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
          Positioned(
            right: 10.w,
            top:40.h,
            child: IconButton(
                onPressed: (){
                  Get.to(()=> MenuParents());
                },
                icon: Icon(Icons.more_vert_rounded,color:Colors.white,size:25.sp)
            ),
          ),
        ],
      )
    );
  }
}
