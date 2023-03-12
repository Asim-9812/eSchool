


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportAssign extends StatelessWidget {
  const ReportAssign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Total Assignment',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold)),
        Container(
          width: 365.w,
          height: 150.h,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.grey.withOpacity(0.3)
              )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 60.sp,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Submitted',style: TextStyle(color: Colors.black,fontSize: 20.sp)),
                      Text('Pending',style: TextStyle(color: Colors.black,fontSize: 20.sp))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text('Total Points',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold)),
        Container(
          width: 365.w,
          height: 120.h,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                    color: Colors.grey.withOpacity(0.3)
                )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Obtained',style: TextStyle(color: Colors.black,fontSize: 20.sp)),
                  Text('Percentage',style: TextStyle(color: Colors.black,fontSize: 20.sp))
                ],
              )
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text('Total Points',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold)),
        Container(
          width: 365.w,
          height: 100.h,
          child: Card(
            color: Colors.grey.withOpacity(0.3),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                    color: Colors.grey.withOpacity(0.3)
                )
            ),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Points : 50 / 50',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                    Text('Solve given sums',style: TextStyle(color: Colors.black,fontSize: 15.sp))
                  ],
                )
            ),
          ),
        )
      ],
    );
  }
}
