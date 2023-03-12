

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chapters extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 500.h,
      child: ListView(

        children: [
          Container(
            // height:520.h,
            // color: Colors.red,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
              child: Column(
                children: [

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    // elevation:5,
                    color: Colors.white60,
                    child: ListTile(

                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(
                            height: 10.h,
                          ),
                          Text('Chapter Name:',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),

                          Text('Chapter 1',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                          SizedBox(
                            height:10.h,
                          ),
                          Text('Chapter Description:',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),

                          Text('.....',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.h,
                          ),



                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // height:520.h,
            // color: Colors.red,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
              child: Column(
                children: [

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    // elevation:5,
                    color: Colors.white60,
                    child: ListTile(

                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(
                            height: 10.h,
                          ),
                          Text('Chapter Name:',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),

                          Text('Chapter 2',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text('Chapter Description:',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),

                          Text('.....',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.h,
                          ),



                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),



        ],
      ),
    );
  }
}
