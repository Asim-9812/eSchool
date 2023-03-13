

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoticeBoard extends StatelessWidget {
  const NoticeBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 170.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                color: Color(0xff205578)
            ),

          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 70.h,
                ),
                Text('Notice Board',style : TextStyle(fontSize: 30.sp,color: Colors.white)),
                SizedBox(
                  height: 65.h,
                ),
                Center(
                  child: Container(
                    width: 350.w,
                    height: 670.h,
                    child: ListView(

                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
                          child: Card(
                            // elevation:5,
                            color: Colors.white54,
                            child: ListTile(

                              title: Text('Regarding School Examination',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top:8.h,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Lorem Ipsum is simply dummy text of the '
                                        'printing and typesetting industry. Lorem '
                                        'Ipsum has been the industry\'s standard '
                                        'dummy text ever since the 1500s, when an '
                                        'unknown printer took a galley of type and '
                                        'scrambled it to make a type specimen book.',style:TextStyle(color: Colors.black),maxLines: 3,),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text('9 months ago',style:TextStyle(fontSize: 12.sp,color: Colors.black))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
                          child: Card(
                            // elevation:5,
                            color: Colors.white54,
                            child: ListTile(

                              title: Text('Regarding School Examination',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top:8.h,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Lorem Ipsum is simply dummy text of the '
                                        'printing and typesetting industry. Lorem '
                                        'Ipsum has been the industry\'s standard '
                                        'dummy text ever since the 1500s, when an '
                                        'unknown printer took a galley of type and '
                                        'scrambled it to make a type specimen book.',style:TextStyle(color: Colors.black),maxLines: 3,),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text('9 months ago',style:TextStyle(fontSize: 12.sp,color: Colors.black))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
                          child: Card(
                            // elevation:5,
                            color: Colors.white54,
                            child: ListTile(

                              title: Text('Regarding School Examination',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top:8.h,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Lorem Ipsum is simply dummy text of the '
                                        'printing and typesetting industry. Lorem '
                                        'Ipsum has been the industry\'s standard '
                                        'dummy text ever since the 1500s, when an '
                                        'unknown printer took a galley of type and '
                                        'scrambled it to make a type specimen book.',style:TextStyle(color: Colors.black),maxLines: 3,),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text('9 months ago',style:TextStyle(fontSize: 12.sp,color: Colors.black))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
                          child: Card(
                            // elevation:5,
                            color: Colors.white54,
                            child: ListTile(

                              title: Text('Regarding School Examination',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top:8.h,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Lorem Ipsum is simply dummy text of the '
                                        'printing and typesetting industry. Lorem '
                                        'Ipsum has been the industry\'s standard '
                                        'dummy text ever since the 1500s, when an '
                                        'unknown printer took a galley of type and '
                                        'scrambled it to make a type specimen book.',style:TextStyle(color: Colors.black),maxLines: 3,),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text('9 months ago',style:TextStyle(fontSize: 12.sp,color: Colors.black))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
                          child: Card(
                            // elevation:5,
                            color: Colors.white54,
                            child: ListTile(

                              title: Text('Regarding School Examination',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top:8.h,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Lorem Ipsum is simply dummy text of the '
                                        'printing and typesetting industry. Lorem '
                                        'Ipsum has been the industry\'s standard '
                                        'dummy text ever since the 1500s, when an '
                                        'unknown printer took a galley of type and '
                                        'scrambled it to make a type specimen book.',style:TextStyle(color: Colors.black),maxLines: 3,),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text('9 months ago',style:TextStyle(fontSize: 12.sp,color: Colors.black))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
                          child: Card(
                            // elevation:5,
                            color: Colors.white54,
                            child: ListTile(

                              title: Text('Regarding School Examination',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top:8.h,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Lorem Ipsum is simply dummy text of the '
                                        'printing and typesetting industry. Lorem '
                                        'Ipsum has been the industry\'s standard '
                                        'dummy text ever since the 1500s, when an '
                                        'unknown printer took a galley of type and '
                                        'scrambled it to make a type specimen book.',style:TextStyle(color: Colors.black),maxLines: 3,),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text('9 months ago',style:TextStyle(fontSize: 12.sp,color: Colors.black))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
                          child: Card(
                            // elevation:5,
                            color: Colors.white54,
                            child: ListTile(

                              title: Text('Regarding School Examination',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top:8.h,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Lorem Ipsum is simply dummy text of the '
                                        'printing and typesetting industry. Lorem '
                                        'Ipsum has been the industry\'s standard '
                                        'dummy text ever since the 1500s, when an '
                                        'unknown printer took a galley of type and '
                                        'scrambled it to make a type specimen book.',style:TextStyle(color: Colors.black),maxLines: 3,),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text('9 months ago',style:TextStyle(fontSize: 12.sp,color: Colors.black))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 120.h,
                        )


                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
