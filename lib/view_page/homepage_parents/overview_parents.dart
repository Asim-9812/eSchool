

import 'package:card_swiper/card_swiper.dart';
import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/homepage_parents/student_profile.dart';
import 'package:eschool/view_page/homepage_student/menu_items/report_page.dart';
import 'package:eschool/view_page/homepage_student/menu_items/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:eschool/view_page/sample_pages/subject_samples/subjects_page.dart';

class OverviewParents extends StatefulWidget {

  @override
  State<OverviewParents> createState() => _OverviewParentsState();
}

class _OverviewParentsState extends State<OverviewParents> {
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
                    child: Text('My Children',style:TextStyle(fontSize: 20.sp,fontWeight : FontWeight.bold,color: Colors.black) ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left:30.w),
                    child: Container(
                        height: 450.h,
                        width: 350.w,
                        // color: Colors.red,
                        child: GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 2.w/2.4.h,
                              crossAxisCount: 2, mainAxisSpacing: 5.h,crossAxisSpacing: 3.w),
                          children: [
                            Stack(

                              children: [
                                GridTile(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: InkWell(
                                      onTap: ()=> Get.to(()=>StudentProfile()),
                                      child: Container(
                                          height: 150.h,
                                          width: 150.w,
                                          color: primary,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,

                                            children: [
                                              CircleAvatar(
                                                radius: 25.sp,
                                                backgroundColor: Colors.white,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 8.h),
                                                child: Text('Name',style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 8.h),
                                                child: Text('Class',style: TextStyle(color: Colors.white,fontSize: 15.sp),),
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                                
                                Align(
                                  alignment: Alignment(-0.15, 0.55),
                                  child: Card(
                                    elevation: 3,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                                      child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20.sp,),
                                    ),
                                  ),
                                )

                              ],
                            ),
                            Stack(

                              children: [
                                GridTile(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: InkWell(
                                      onTap: ()=> Get.to(()=>Subjects()),
                                      child: Container(
                                          height: 150.h,
                                          width: 150.w,
                                          color: primary,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,

                                            children: [
                                              CircleAvatar(
                                                radius: 25.sp,
                                                backgroundColor: Colors.white,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 8.h),
                                                child: Text('Name',style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 8.h),
                                                child: Text('Class',style: TextStyle(color: Colors.white,fontSize: 15.sp),),
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: Alignment(-0.15, 0.55),
                                  child: Card(
                                    elevation: 3,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                                      child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20.sp,),
                                    ),
                                  ),
                                )

                              ],
                            ),
                            Stack(

                              children: [
                                GridTile(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: InkWell(
                                      onTap: ()=> Get.to(()=>Subjects()),
                                      child: Container(
                                          height: 150.h,
                                          width: 150.w,
                                          color: primary,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,

                                            children: [
                                              CircleAvatar(
                                                radius: 25.sp,
                                                backgroundColor: Colors.white,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 8.h),
                                                child: Text('Name',style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 8.h),
                                                child: Text('Class',style: TextStyle(color: Colors.white,fontSize: 15.sp),),
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: Alignment(-0.15, 0.55),
                                  child: Card(
                                    elevation: 3,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                                      child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20.sp,),
                                    ),
                                  ),
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
                            Text('E-mail',style:TextStyle(fontSize: 15.sp,color: Colors.white),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10.w,
              top:40.h,
              child: IconButton(
                  onPressed: (){
                    Get.to(()=> Settings());
                  },
                  icon: Icon(Icons.more_vert_rounded,color:Colors.white,size:25.sp)
              ),
            ),

          ]),

    );
  }
}
