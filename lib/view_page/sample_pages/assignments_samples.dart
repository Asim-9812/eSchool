


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Assignments extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(

      children: [
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 120.h,

            child: Stack(
              children:[

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Container(
                    width: 320.w,
                    child: Card(
                      color: Colors.white54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 40.w),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('TASK 1',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  Text('QUESTIONS',style:TextStyle(color: Colors.black)),
                                ],
                              ),
                              Text('DUE DATE',style:TextStyle(color: Colors.black,fontSize: 10.sp))
                            ],
                          ),


                        ),
                      ),
                    ),
              ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.95, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          color:  Colors.blue,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 90.h,
                      width: 90.w
                  ),
                ),

              ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 120.h,

            child: Stack(
              children:[

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Container(
                    width: 320.w,
                    child: Card(
                      color: Colors.white54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 40.w),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('TASK 2',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  Text('QUESTIONS',style:TextStyle(color: Colors.black)),
                                ],
                              ),
                              Text('DUE DATE',style:TextStyle(color: Colors.black,fontSize: 10.sp))
                            ],
                          ),

                        ),
                      ),
                    ),
              ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.95, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          color:  Colors.greenAccent,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 90.h,
                      width: 90.w
                  ),
                ),

              ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 120.h,

            child: Stack(
              children:[

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Container(
                    width: 320.w,
                    child: Card(
                      color: Colors.white54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 40.w),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('TASK 3',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  Text('QUESTIONS',style:TextStyle(color: Colors.black)),
                                ],
                              ),
                              Text('DUE DATE',style:TextStyle(color: Colors.black,fontSize: 10.sp))
                            ],
                          ),
                        ),
                      ),
                    ),
              ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.95, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          color:  Colors.redAccent,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 90.h,
                      width: 90.w
                  ),
                ),

              ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 120.h,

            child: Stack(
              children:[

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Container(
                    width: 320.w,
                    child: Card(
                      color: Colors.white54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 40.w),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('TASK 4',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  Text('QUESTIONS',style:TextStyle(color: Colors.black)),
                                ],
                              ),
                              Text('DUE DATE',style:TextStyle(color: Colors.black,fontSize: 10.sp))
                            ],
                          ),
                        ),
                      ),
                    ),
              ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.95, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          color:  Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 90.h,
                      width: 90.w
                  ),
                ),

              ]
            ),
          ),
        ),
        SizedBox(
          height:200.h
        )


      ],
    );
  }
}