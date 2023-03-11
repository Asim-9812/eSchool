

import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/homepage_student/menu_items/attendance_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/timetable_page.dart';
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
                              child:Icon(EvaIcons.calendarOutline,size: 45.sp,color:Color(0xff6baa90))
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
                              child:Icon(EvaIcons.clockOutline,size: 45.sp,color:Color(0xff6baa90))
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
                          // show();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: Color(0xffbbedd7),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                              child:Icon(EvaIcons.clipboardOutline,size: 45.sp,color:Color(0xff6baa90))
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
                          // show();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: Color(0xffbbedd7),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                              child:Icon(EvaIcons.fileOutline,size: 45.sp,color:Color(0xff6baa90))
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
                          // show();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: Color(0xffbbedd7),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                              child:Icon(EvaIcons.fileTextOutline,size: 45.sp,color:Color(0xff6baa90))
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
                          // show();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: Color(0xffbbedd7),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                              child:Icon(EvaIcons.bookOpenOutline,size: 45.sp,color:Color(0xff6baa90))
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
                          // show();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: Color(0xffbbedd7),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                              child:Icon(EvaIcons.person,size: 45.sp,color:Color(0xff6baa90))
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
                          // show();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: Color(0xffbbedd7),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                              child:Icon(EvaIcons.browserOutline,size: 45.sp,color:Color(0xff6baa90))
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
                          // show();
                        },
                        child: Container(
                          height: 80.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: Color(0xffbbedd7),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                              child:Icon(EvaIcons.settings2Outline,size: 45.sp,color:Color(0xff6baa90))
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
                          height: 200.h,
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


          ],
        )
    );
  }
}
