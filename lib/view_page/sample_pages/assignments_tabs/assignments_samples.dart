


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Assignments extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,

      children: [
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 130.h,

            child: Stack(
              children:[

                Align(
                  alignment: Alignment.centerRight,
                  child: Card(
                    elevation: 0,
                    color: Colors.grey.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: SizedBox(
                      height: 120.h,
                      width: 300.w,
                    )
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                    title: Row(
                      children: [
                        Container(
                          height: 80.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Task 1',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                            Text('Questions',style: TextStyle(color: Colors.black54,fontSize: 15.sp),),
                            SizedBox(height: 5.h,),
                            Text('Due Date',style: TextStyle(color: Colors.black45,fontSize: 12.sp),),
                          ],
                        ),
                      ],
                    ),


                  ),
                )


              ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 130.h,

            child: Stack(
                children:[

                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                        elevation: 0,
                        color: Colors.grey.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: SizedBox(
                          height: 120.h,
                          width: 300.w,
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                      title: Row(
                        children: [
                          Container(
                            height: 80.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Task 1',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                              Text('Questions',style: TextStyle(color: Colors.black54,fontSize: 15.sp),),
                              SizedBox(height: 5.h,),
                              Text('Due Date',style: TextStyle(color: Colors.black45,fontSize: 12.sp),),
                            ],
                          ),
                        ],
                      ),


                    ),
                  )


                ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 130.h,

            child: Stack(
                children:[

                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                        elevation: 0,
                        color: Colors.grey.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: SizedBox(
                          height: 120.h,
                          width: 300.w,
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                      title: Row(
                        children: [
                          Container(
                            height: 80.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Task 1',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                              Text('Questions',style: TextStyle(color: Colors.black54,fontSize: 15.sp),),
                              SizedBox(height: 5.h,),
                              Text('Due Date',style: TextStyle(color: Colors.black45,fontSize: 12.sp),),
                            ],
                          ),
                        ],
                      ),


                    ),
                  )


                ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 130.h,

            child: Stack(
                children:[

                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                        elevation: 0,
                        color: Colors.grey.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: SizedBox(
                          height: 120.h,
                          width: 300.w,
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                      title: Row(
                        children: [
                          Container(
                            height: 80.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Task 1',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                              Text('Questions',style: TextStyle(color: Colors.black54,fontSize: 15.sp),),
                              SizedBox(height: 5.h,),
                              Text('Due Date',style: TextStyle(color: Colors.black45,fontSize: 12.sp),),
                            ],
                          ),
                        ],
                      ),


                    ),
                  )


                ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 130.h,

            child: Stack(
                children:[

                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                        elevation: 0,
                        color: Colors.grey.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: SizedBox(
                          height: 120.h,
                          width: 300.w,
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                      title: Row(
                        children: [
                          Container(
                            height: 80.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Task 1',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                              Text('Questions',style: TextStyle(color: Colors.black54,fontSize: 15.sp),),
                              SizedBox(height: 5.h,),
                              Text('Due Date',style: TextStyle(color: Colors.black45,fontSize: 12.sp),),
                            ],
                          ),
                        ],
                      ),


                    ),
                  )


                ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 130.h,

            child: Stack(
                children:[

                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                        elevation: 0,
                        color: Colors.grey.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: SizedBox(
                          height: 120.h,
                          width: 300.w,
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                      title: Row(
                        children: [
                          Container(
                            height: 80.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Task 1',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                              Text('Questions',style: TextStyle(color: Colors.black54,fontSize: 15.sp),),
                              SizedBox(height: 5.h,),
                              Text('Due Date',style: TextStyle(color: Colors.black45,fontSize: 12.sp),),
                            ],
                          ),
                        ],
                      ),


                    ),
                  )


                ]
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            height: 130.h,

            child: Stack(
                children:[

                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                        elevation: 0,
                        color: Colors.grey.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: SizedBox(
                          height: 120.h,
                          width: 300.w,
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                      title: Row(
                        children: [
                          Container(
                            height: 80.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Task 1',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                              Text('Questions',style: TextStyle(color: Colors.black54,fontSize: 15.sp),),
                              SizedBox(height: 5.h,),
                              Text('Due Date',style: TextStyle(color: Colors.black45,fontSize: 12.sp),),
                            ],
                          ),
                        ],
                      ),


                    ),
                  )


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