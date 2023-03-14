

import 'package:eschool/view_page/homepage_student/default_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NoticeBoard extends StatelessWidget {
  const NoticeBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Center(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 1/5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(40),),
                      color: Color(0xff205578)
                  ),
                  child: Center(
                    child: Text('Notice Board',style : TextStyle(fontSize: 30.sp,color: Colors.white)),
                  ),

                ),
                Container(
                  height: MediaQuery.of(context).size.height*4/5,
                  child: ListView(

                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.h),
                        child: Card(
                          elevation:0,
                          color: Colors.grey.withOpacity(0.2),
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
                          elevation:0,
                          color: Colors.grey.withOpacity(0.2),
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
                          elevation:0,
                          color: Colors.grey.withOpacity(0.2),
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
                          elevation:0,
                          color: Colors.grey.withOpacity(0.2),
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
                          elevation:0,
                          color: Colors.grey.withOpacity(0.2),
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
                          elevation:0,
                          color: Colors.grey.withOpacity(0.2),
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
                          elevation:0,
                          color: Colors.grey.withOpacity(0.2),
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
                          elevation:0,
                          color: Colors.grey.withOpacity(0.2),
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

              ],
            ),
          ),

          Positioned(
            left: 15.w,
            top:40.h,
            child: IconButton(
                onPressed: (){
                  Get.to(()=>DefaultPage());
                },
                icon: Icon(Icons.arrow_back,color:Colors.white,size:25.sp)
            ),
          ),
        ],
      ),
    );
  }
}
