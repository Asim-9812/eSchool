


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Exams extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(

      children: [
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 80.h,


            child: Card(
              color: Colors.white60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 5.w),
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subject - practical',style:TextStyle(color: Colors.black,fontSize: 12.sp)),
                          Text('DateTime',style:TextStyle(color: Colors.black,fontSize: 12.sp)),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subjects',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp)),
                          Text('Total Marks',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp)),
                        ],
                      ),

                    ],
                  ),


                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 80.h,


            child: Card(
              color: Colors.white60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 5.w),
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subject - practical',style:TextStyle(color: Colors.black,fontSize: 12.sp)),
                          Text('DateTime',style:TextStyle(color: Colors.black,fontSize: 12.sp)),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subjects',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp)),
                          Text('Total Marks',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp)),
                        ],
                      ),

                    ],
                  ),


                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 80.h,


            child: Card(
              color: Colors.white60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 5.w),
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subject - practical',style:TextStyle(color: Colors.black,fontSize: 12.sp)),
                          Text('DateTime',style:TextStyle(color: Colors.black,fontSize: 12.sp)),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subjects',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp)),
                          Text('Total Marks',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp)),
                        ],
                      ),

                    ],
                  ),


                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 80.h,


            child: Card(
              color: Colors.white60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 5.w),
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subject - practical',style:TextStyle(color: Colors.black,fontSize: 12.sp)),
                          Text('DateTime',style:TextStyle(color: Colors.black,fontSize: 12.sp)),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subjects',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp)),
                          Text('Total Marks',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp)),
                        ],
                      ),

                    ],
                  ),


                ),
              ),
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