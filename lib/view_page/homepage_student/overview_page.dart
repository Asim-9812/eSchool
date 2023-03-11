

import 'package:card_swiper/card_swiper.dart';
import 'package:eschool/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverviewPage extends StatefulWidget {

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 225.h,
                ),

                Container(
                    width: double.infinity,
                    height: 260.h,
                    child: Swiper(

                      pagination: SwiperPagination(
                        alignment: Alignment.bottomCenter,
                      ),
                      itemCount: 2,
                      loop: true,
                      viewportFraction: 1,
                      scale: 0.9,
                      itemBuilder: (context,index){
                        return Center(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            color: Colors.grey,
                            child: SizedBox(
                              width: 320.w,
                              height: 200.h,
                              child: Center(child: Text('Exam Date... ')),
                            ),
                          ),
                        );
                      },
                    )
                ),
                SizedBox(
                  height: 20.h,
                ),
        Padding(
            padding : EdgeInsets.symmetric(horizontal : 30.w,vertical : 8.h),
            child: Text('My Subjects',style:TextStyle(fontSize: 25.sp,fontWeight : FontWeight.bold,color: Colors.black) ),
        ),
        Padding(
          padding: EdgeInsets.only(left:20.w),
          child: Container(
              height: 450.h,
              width: 350.w,
              // color: Colors.red,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.w/2.4.h,
                    crossAxisCount: 3, mainAxisSpacing: 5.h,crossAxisSpacing: 5.w),
                children: [
                  Column(

                    children: [
                      GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            color: Colors.lightBlueAccent,
                            child: Center(child: Image.asset('assets/icons/maths.png',width: 50.w,height: 50.h))
                          ),
                        ),
                      ),
                      Padding(
                        padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                        child: Text('Math',style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                  Column(

                    children: [
                      GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            color: Colors.redAccent,
                            child: Center(child: Image.asset('assets/icons/science.png',width: 50.w,height: 50.h))
                          ),
                        ),
                      ),
                      Padding(
                        padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                        child: Text('Science',style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                  Column(

                    children: [
                      GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            color: Colors.orangeAccent,
                            child: Center(child: Image.asset('assets/icons/english.png',width: 50.w,height: 50.h))
                          ),
                        ),
                      ),
                      Padding(
                        padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                        child: Text('English',style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                  Column(

                    children: [
                      GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            color: Colors.deepPurpleAccent,
                            child: Center(child: Image.asset('assets/icons/accounting.png',width: 50.w,height: 50.h))
                          ),
                        ),
                      ),
                      Padding(
                        padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                        child: Text('Account',style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                  Column(

                    children: [
                      GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            color: Colors.blue,
                            child: Center(child: Image.asset('assets/icons/computer.png',width: 50.w,height: 50.h))
                          ),
                        ),
                      ),
                      Padding(
                        padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                        child: Text('Computer',style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                  Column(

                    children: [
                      GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            color: Colors.pinkAccent,
                            child: Center(child: Image.asset('assets/icons/drawing.png',width: 50.w,height: 50.h))
                          ),
                        ),
                      ),
                      Padding(
                        padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                        child: Text('Drawing',style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                  Column(

                    children: [
                      GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            color: Colors.deepOrangeAccent,
                            child: Center(child: Image.asset('assets/icons/music.png',width: 50.w,height: 50.h))
                          ),
                        ),
                      ),
                      Padding(
                        padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                        child: Text('Music',style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),

                ],
              )
          ),
        ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal : 30.w,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Latest Notices',style: TextStyle(fontSize: 20.sp,color: Colors.black)),
                      Text('view all >',style: TextStyle(fontSize: 15.sp,color: Colors.grey)),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: 360.w,
                    height: 500.h,
                    child: ListView(

                      children: [
                        Card(
                          // elevation:5,
                          color: Colors.white54,
                          child: ListTile(

                            title: Text('Regarding School Examination',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            subtitle: Padding(
                              padding: EdgeInsets.only(top:8.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Lorem Ipsum is simply dummy text of the '
                                      'printing and typesetting industry. Lorem '
                                      'Ipsum has been the industry\'s standard '
                                      'dummy text ever since the 1500s, when an '
                                      'unknown printer took a galley of type and '
                                      'scrambled it to make a type specimen book.',style:TextStyle(color: Colors.black),maxLines: 3,),
                                  Text('9 months ago',style:TextStyle(fontSize: 12.sp,color: Colors.black))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          // elevation:5,
                          color: Colors.white54,
                          child: ListTile(

                            title: Text('Regarding School Examination',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            subtitle: Padding(
                              padding: EdgeInsets.only(top:8.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Lorem Ipsum is simply dummy text of the '
                                      'printing and typesetting industry. Lorem '
                                      'Ipsum has been the industry\'s standard '
                                      'dummy text ever since the 1500s, when an '
                                      'unknown printer took a galley of type and '
                                      'scrambled it to make a type specimen book.',style:TextStyle(color: Colors.black),maxLines: 3,),
                                  Text('9 months ago',style:TextStyle(fontSize: 12.sp,color: Colors.black))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          // elevation:5,
                          color: Colors.white54,
                          child: ListTile(

                            title: Text('Regarding School Examination',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            subtitle: Padding(
                              padding: EdgeInsets.only(top:8.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Lorem Ipsum is simply dummy text of the '
                                      'printing and typesetting industry. Lorem '
                                      'Ipsum has been the industry\'s standard '
                                      'dummy text ever since the 1500s, when an '
                                      'unknown printer took a galley of type and '
                                      'scrambled it to make a type specimen book.',style:TextStyle(color: Colors.black),maxLines: 3,),
                                  Text('9 months ago',style:TextStyle(fontSize: 12.sp,color: Colors.black))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ],
      ),
          ),

          Container(
        height: 220.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.vertical(bottom:Radius.circular(25))
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 25.w,top: 70.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.sp,
                      child: Icon(Icons.person,size:40.sp,color: Colors.grey)
                  ),
                ),
                Padding(
                  padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Username',style:TextStyle(fontSize: 25.sp,color: Colors.white),),
                      Text('Class : 9 A | Roll No : 9',style:TextStyle(fontSize: 15.sp,color: Colors.white),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),

        ]),

    );
  }
}
