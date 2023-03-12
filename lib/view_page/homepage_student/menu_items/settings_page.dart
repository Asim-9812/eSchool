

import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/login_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70.h,
        ),
        Text('Settings',style : TextStyle(fontSize: 25.sp,color: Colors.white)),
        SizedBox(
          height: 50.h,
        ),
        Center(
          child: Container(
            width: 350.w,
            height: 320.h,
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              children: [
                ListTile(
                  visualDensity: VisualDensity(vertical: -3),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Change Password',style:TextStyle(color: Colors.black)),
                      Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                    ],
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Privacy Policy',style:TextStyle(color: Colors.black)),
                      Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                    ],
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity(vertical: -3),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Terms & Condition',style:TextStyle(color: Colors.black)),
                      Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                    ],
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity(vertical: -3),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('About Us',style:TextStyle(color: Colors.black)),
                      Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                    ],
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity(vertical: -3),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Contact Us',style:TextStyle(color: Colors.black)),
                      Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                    ],
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity(vertical: -3),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rate Us',style:TextStyle(color: Colors.black)),
                      Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                    ],
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity(vertical: -3),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Share',style:TextStyle(color: Colors.black)),
                      Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.sp,)
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            )
          ),
            onPressed: ()=>Get.to(()=> LoginPage()),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.logout,size: 15.sp,),
                  SizedBox(
                    width: 5.h,
                  ),
                  Text('Log Out'),
                ],
              ),
            ))
      ],
    );
  }
}
