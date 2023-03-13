
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FeePage extends StatelessWidget {

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
                    height:50.h
                ),
                Text('Fee',style : TextStyle(fontSize: 25.sp,color: Colors.white)),
                SizedBox(
                  height: 90.h,
                ),
                ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),

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
                                      Text('Class',style:TextStyle(color: Colors.black,fontSize: 12.sp)),
                                      Text('Date ',style:TextStyle(color: Colors.black,fontSize: 12.sp)),

                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Status',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp)),
                                      Text('Due Date',style:TextStyle(color: Colors.black,fontSize: 15.sp)),
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
                )
              ],
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
    );
  }
}
