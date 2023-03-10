


import 'package:eschool/view_page/homepage_student/default_page.dart';
import 'package:eschool/view_page/sample_pages/report_tabs/reports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
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
                SizedBox(
                  height: 60.h,
                ),
                Text('Subjects',style : TextStyle(fontSize: 30.sp,color: Colors.white)),
                SizedBox(
                  height: 75.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left:20.w,right: 20.w),
                  child: Container(
                      height: MediaQuery.of(context).size.height*4/6,
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
                                    onTap: ()=> Get.to(()=>Report()),
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
                                    onTap: ()=> Get.to(()=>Report()),
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
                                    onTap: ()=> Get.to(()=>Report()),
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
                                    onTap: ()=> Get.to(()=>Report()),
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
                                    onTap: ()=> Get.to(()=>Report()),
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
                                    onTap: ()=> Get.to(()=>Report()),
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
                                    onTap: ()=> Get.to(()=>Report()),
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
                  ),
                ),
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
