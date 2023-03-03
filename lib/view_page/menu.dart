

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eschool/view_page/timetable.dart';
import 'package:eschool/view_page/attendance.dart';

class MenuPage extends StatefulWidget {

  @override
  State<MenuPage> createState() => _MenuPageState();
}



class _MenuPageState extends State<MenuPage> {

  var _showContainer;
  var _showContainer2;

  @override
  void initState() {
    _showContainer = false;
    _showContainer2 = false;
    super.initState();
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
    return Container(
      color: Colors.black.withOpacity(0.2),
      child: Stack(
        children:[ Column(
          children: [
            SizedBox(
              height: 320.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top:Radius.circular(40.sp))
              ),
              //
              height: 520.h,
              child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:20.w,vertical:20.h),
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
                                  radius: 40.sp,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Username',style:TextStyle(fontSize: 32.sp,color: Colors.black,fontWeight: FontWeight.bold),),
                                    Text('Class : 9 A | Roll No : 9',style:TextStyle(fontSize: 18.sp,color: Colors.grey),)
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
                      thickness: 1,
                      color: Colors.grey.withOpacity(0.7),
                      height: 3.h,
                      indent: 20.w,
                      endIndent: 20.w,
                    ),
                    Container(
                      height: 380.h,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.w/2.2.h,
                            crossAxisCount: 3, mainAxisSpacing: 10.h,crossAxisSpacing: 5.w),
                        children: [
                          Column(
                            children: [
                              GridTile(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: InkWell(
                                    onTap: (){
                                      show();
                                    },
                                    child: Container(
                                      height: 100.h,
                                      width: 100.w,
                                      color: Color(0xffadedd2),
                                      child: Center(
                                          child:Icon(Icons.today_outlined,color:Color(0xff6baa90),size:40.sp)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                                child: Text('Attendance'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GridTile(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: InkWell(
                                    onTap: (){
                                      show2();
                                    },
                                    child: Container(
                                      height: 100.h,
                                      width: 100.w,
                                      color: Color(0xffadedd2),
                                      child: Center(
                                          child:Icon(Icons.timer_sharp,color:Color(0xff6baa90),size:40.sp)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                                child: Text('Timetable'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GridTile(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 100.h,
                                    width: 100.w,
                                    color: Color(0xffadedd2),
                                    child: Center(
                                        child:Icon(Icons.notifications_active,color:Color(0xff6baa90),size:40.sp)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                                child: Text('Notice'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GridTile(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 100.h,
                                    width: 100.w,
                                    color: Color(0xffadedd2),
                                    child: Center(
                                        child:Icon(Icons.person,color:Color(0xff6baa90),size:40.sp)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                                child: Text('Profile'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GridTile(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 100.h,
                                    width: 100.w,
                                    color: Color(0xffadedd2),
                                    child: Center(
                                        child:Icon(Icons.add_card_sharp,color:Color(0xff6baa90),size:40.sp)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                                child: Text('Holidays'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GridTile(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 100.h,
                                    width: 100.w,
                                    color: Color(0xffadedd2),
                                    child: Center(
                                      child:Icon(Icons.settings,color:Color(0xff6baa90),size:40.sp)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical:8.h,horizontal:8.w),
                                child: Text('Settings'),
                              )
                            ],
                          ),
                        ],

                      ),
                    )
                  ],
                )
            ),
          ],
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
                  left: 20.w,
                  top:30.h,
                  child: IconButton(
                      onPressed: (){
                        show();
                      },
                      icon: Icon(Icons.arrow_back,color:Colors.white,size:30.sp)
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
                      left: 20.w,
                      top:30.h,
                      child: IconButton(
                          onPressed: (){
                            show2();
                          },
                          icon: Icon(Icons.arrow_back,color:Colors.white,size:30.sp)
                      ),
                    ),

                    Align(
                        alignment:Alignment.topCenter,
                        child: TimeTable())

                  ]
                )
            ),

          ),





        ]
      ),
    );
  }
}
