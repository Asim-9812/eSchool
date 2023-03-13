

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParentsProfile extends StatelessWidget {

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
                  height: 60.h,
                ),
                Text('Parents Profile',style : TextStyle(fontSize: 25.sp,color: Colors.white)),
                SizedBox(
                  height: 55.h,
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,

                    children: [
                      Container(
                        // color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 25.h,
                                  ),
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
                                            height: 50.h,
                                          ),
                                          Divider(
                                            thickness: 1.h,
                                            height: 8.h,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Text('Mother\'s Name:',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('Jane Doe',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Text('Date Of Birth',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('1995-01-01',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Text('E-mail',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('jane@gmail.com',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Text('Occupation',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('Business',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Text('Phone Number',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('981000000',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Text('Address',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('-',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),




                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40.sp,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 35.sp,
                                    child: Icon(Icons.person,color: Colors.black,size: 40.sp,),
                                  ),

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 25.h,
                                  ),
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
                                            height: 50.h,
                                          ),
                                          Divider(
                                            thickness: 1.h,
                                            height: 8.h,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Text('Father\'s Name:',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('John Doe',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Text('Date Of Birth',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('1995-12-12',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Text('E-mail',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('john@gmail.com',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Text('Occupation',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('Business',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Text('Phone Number',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('981999999',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Text('Address',style:TextStyle(color: Colors.grey,fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text('-',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 20.h,
                                          ),




                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40.sp,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 35.sp,
                                    child: Icon(Icons.person,color: Colors.black,size: 40.sp,),
                                  ),

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      )




                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
