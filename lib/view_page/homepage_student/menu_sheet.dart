

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
  var _showContainer;
  var _showContainer2;
  var _showContainer3;
  var _showContainer4;
  var _showContainer5;
  var _showContainer6;
  var _showContainer7;
  var _showContainer8;
  var _showContainer9;


  @override
  void initState() {
    super.initState();
    // Rebuild the screen after 3s which will process the animation from green to blue
    Future.delayed(Duration(milliseconds: 100)).then((value) => setState(() {
      boxX = 0;
      boxY = 1;
    }));
    _showContainer = false;
    _showContainer2 = false;
    _showContainer3 = false;
    _showContainer4 = false;
    _showContainer5 = false;
    _showContainer6 = false;
    _showContainer7 = false;
    _showContainer8 = false;
    _showContainer9 = false;
  }

  void show() {
    setState(() {
      _showContainer = !_showContainer;
    });
  }
  void show2() {
    setState(() {
      _showContainer2 = !_showContainer2;
    });
  }
  void show3() {
    setState(() {
      _showContainer3 = !_showContainer3;
    });
  }
  void show4() {
    setState(() {
      _showContainer4 = !_showContainer4;
    });
  }
  void show5() {
    setState(() {
      _showContainer5 = !_showContainer5;
    });
  }
  void show6() {
    setState(() {
      _showContainer6 = !_showContainer6;
    });
  }
  void show7() {
    setState(() {
      _showContainer7 = !_showContainer7;
    });
  }
  void show8() {
    setState(() {
      _showContainer8 = !_showContainer8;
    });
  }
  void show9() {
    setState(() {
      _showContainer9 = !_showContainer9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black38,
        body: Stack(
          children: [
            Container(
                height: 250.h,
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300) ,
              alignment: Alignment(boxX, boxY),
              curve: Curves.bounceIn,
              child: Container(
                height: 600.h,
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
                      padding: EdgeInsets.symmetric(horizontal:20.w,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 30.sp,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal:8.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Username',style:TextStyle(fontSize: 25.sp,color: Colors.black,fontWeight: FontWeight.bold),),
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
                      thickness: 2.h,
                      color: Colors.grey.withOpacity(0.7),
                      height: 15.h,
                      indent: 20.w,
                      endIndent: 20.w,
                    ),
                    Container(
                      height:375.h,
                      width:350.w,
                      // color: Colors.red,
                      child: GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 2.w/2.h,
                              crossAxisCount: 3, mainAxisSpacing: 4.h,crossAxisSpacing: 5.w),
                          children: [
                      Column(
                      children: [
                      GridTile(
                      child: InkWell(
                        onTap: (){
                          show();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
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
                      child: Text('Attendance',style: TextStyle(color: Colors.black)),
                    )
                  ],
                ),
                      Column(
                      children: [
                      GridTile(
                      child: InkWell(
                        onTap: (){
                          show2();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
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
                          show3();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
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
                          show4();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
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
                          show5();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
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
                          show6();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
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
                          show7();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
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
                          show8();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
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
                          show9();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
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


                          ])
                    ),
                    SizedBox(
                      height: 100.h
                    )

                  ],
                ),
              ),

            ),
            Visibility(
                visible: _showContainer,
                child: Container(
                  height:825.h,
                  width:double.infinity,
                  color: Colors.white,
                  child: Stack(
                      children:[

                        Container(
                          width: double.infinity,
                          height: 170.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                              color: Color(0xff205578)
                          ),

                        ),
                        Positioned(
                          left: 15.w,
                          top:50.h,
                          child: IconButton(
                              onPressed: (){
                                show();
                              },
                              icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
                          ),
                        ),

                        Align(
                            alignment:Alignment.topCenter,
                            child: Attendance())
                      ]),)

            ),
            Visibility(
              visible: _showContainer2,
              child: Container(
                  height:825.h,
                  width:double.infinity,
                  color: Colors.white,
                  child: Stack(
                      children:[

                        Container(
                          width: double.infinity,
                          height: 150.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                              color: Color(0xff205578)
                          ),

                        ),
                        Positioned(
                          left: 15.w,
                          top:60.h,
                          child: IconButton(
                              onPressed: (){
                                show2();
                              },
                              icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
                          ),
                        ),

                        Align(
                            alignment:Alignment.topCenter,
                            child: TimeTable())

                      ]
                  )
              ),

            ),
            Visibility(
              visible: _showContainer3,
              child: Container(
                  height:825.h,
                  width:double.infinity,
                  color: Colors.white,
                  child: Stack(
                      children:[

                        Container(
                          width: double.infinity,
                          height: 170.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                              color: Color(0xff205578)
                          ),

                        ),
                        Positioned(
                          left: 15.w,
                          top:60.h,
                          child: IconButton(
                              onPressed: (){
                                show3();
                              },
                              icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
                          ),
                        ),

                        Align(
                            alignment:Alignment.topCenter,
                            child: NoticeBoard())

                      ]
                  )
              ),

            ),
            Visibility(
              visible: _showContainer4,
              child: Container(
                  height:825.h,
                  width:double.infinity,
                  color: Colors.white,
                  child: Stack(
                      children:[

                        Container(
                          width: double.infinity,
                          height: 170.h,
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
                                show4();
                              },
                              icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
                          ),
                        ),

                        Align(
                            alignment:Alignment.topCenter,
                            child: Examination())

                      ]
                  )
              ),

            ),
            Visibility(
              visible: _showContainer5,
              child: Container(
                  height:825.h,
                  width:double.infinity,
                  color: Colors.white,
                  child: Stack(
                      children:[

                        Container(
                          width: double.infinity,
                          height: 170.h,
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
                                show5();
                              },
                              icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
                          ),
                        ),

                        Align(
                            alignment:Alignment.topCenter,
                            child: ResultPage())

                      ]
                  )
              ),

            ),
            Visibility(
              visible: _showContainer6,
              child: Container(
                  height:825.h,
                  width:double.infinity,
                  color: Colors.white,
                  child: Stack(
                      children:[

                        Container(
                          width: double.infinity,
                          height: 150.h,
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
                                show6();
                              },
                              icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
                          ),
                        ),

                        Align(
                            alignment:Alignment.topCenter,
                            child: ReportPage())

                      ]
                  )
              ),

            ),
            Visibility(
              visible: _showContainer7,
              child: Container(
                  height:825.h,
                  width:double.infinity,
                  color: Colors.white,
                  child: Stack(
                      children:[

                        Container(
                          width: double.infinity,
                          height: 150.h,
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
                                show7();
                              },
                              icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
                          ),
                        ),

                        Align(
                            alignment:Alignment.topCenter,
                            child: ParentsProfile())

                      ]
                  )
              ),

            ),
            Visibility(
              visible: _showContainer8,
              child: Container(
                  height:825.h,
                  width:double.infinity,
                  color: Colors.white,
                  child: Stack(
                      children:[

                        Container(
                          width: double.infinity,
                          height: 200.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                              color: Color(0xff205578)
                          ),

                        ),
                        Positioned(
                          left: 15.w,
                          top:60.h,
                          child: IconButton(
                              onPressed: (){
                                show8();
                              },
                              icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
                          ),
                        ),

                        Align(
                            alignment:Alignment.topCenter,
                            child: Holidays())

                      ]
                  )
              ),

            ),
            Visibility(
              visible: _showContainer9,
              child: Container(
                  height:825.h,
                  width:double.infinity,
                  color: Colors.white,
                  child: Stack(
                      children:[

                        Container(
                          width: double.infinity,
                          height: 150.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                              color: Color(0xff205578)
                          ),

                        ),
                        Positioned(
                          left: 15.w,
                          top:60.h,
                          child: IconButton(
                              onPressed: (){
                                show9();
                              },
                              icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
                          ),
                        ),

                        Align(
                            alignment:Alignment.topCenter,
                            child: Settings())

                      ]
                  )
              ),

            ),


          ],
        )
    );
  }
}
