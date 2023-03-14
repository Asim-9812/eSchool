

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Announcements extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*4/6,
    child: Center(
    child: Text('No Announcements',style: TextStyle(fontSize: 30.sp,color: Colors.black),),
    ),
    );
  }
}
