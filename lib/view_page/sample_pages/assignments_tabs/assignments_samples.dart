


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
            height: 110.h,

            child: Stack(
              children:[

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Container(
                    width: 300.w,
                    child: Card(
                      color: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 35.w),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('TASK 1',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              Text('QUESTIONS',style:TextStyle(color: Colors.black)),
                              SizedBox(height: 20.h,),
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
                          color:  Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 70.h,
                      width: 80.w
                  ),
                ),

              ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 110.h,

            child: Stack(
              children:[

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Container(
                    width: 300.w,
                    child: Card(
                      color: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 35.w),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('TASK 2',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              Text('QUESTIONS',style:TextStyle(color: Colors.black)),
                              SizedBox(height: 20.h,),
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
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 70.h,
                      width: 80.w
                  ),
                ),

              ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 110.h,

            child: Stack(
              children:[

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Container(
                    width: 300.w,
                    child: Card(
                      color: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 35.w),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('TASK 3',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              Text('QUESTIONS',style:TextStyle(color: Colors.black)),
                              SizedBox(height: 20.h,),
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
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 70.h,
                      width: 80.w
                  ),
                ),

              ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 110.h,

            child: Stack(
              children:[

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Container(
                    width: 300.w,
                    child: Card(
                      color: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 35.w),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('TASK 4',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              Text('QUESTIONS',style:TextStyle(color: Colors.black)),
                              SizedBox(height: 20.h,),
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
                          color:  Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 70.h,
                      width: 80.w
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