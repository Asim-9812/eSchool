

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(bottom:Radius.circular(30.sp)),
          child: Stack(
              children:[ Container(
                color: Colors.blue,
                height: 200.h,
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.w,top: 60.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 30.sp,
                          ),
                        ),
                        Padding(
                          padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Username',style:TextStyle(fontSize: 32.sp,color: Colors.white,fontWeight: FontWeight.bold),),
                              Text('Class : 9 A | Roll No : 9',style:TextStyle(fontSize: 18.sp,color: Colors.white),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
                Positioned(
                    left:20.w,
                    top: 40.h,
                    child: Icon(Icons.arrow_back,color: Colors.white,size: 25.sp,))
              ]
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
            width: double.infinity,
            height: 200.h,
            child: Swiper(
              pagination: SwiperPagination(),
              itemCount: 4,
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
                      width: 350.w,
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
          padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
          child: Text('My Subjects',style:TextStyle(fontSize: 30.sp,fontWeight : FontWeight.bold,color: Colors.black) ),
        ),
        Container(
          height: 350.h,
          width: double.infinity,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2.w/2.2.h,
                crossAxisCount: 3, mainAxisSpacing: 5.h,crossAxisSpacing: 5.w),
            children: [
              Column(
                children: [
                  GridTile(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          color: Colors.redAccent,
                        ),
                      ),
                  ),
                  Padding(
                    padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                    child: Text('English'),
                  )
                ],
              ),
              Column(
                children: [
                  GridTile(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          color: Colors.greenAccent,
                        ),
                      ),
                  ),
                  Padding(

                    padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                    child: Text('Social'),
                  )
                ],
              ),
              Column(
                children: [
                  GridTile(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          color: Colors.orangeAccent,
                        ),
                      ),
                  ),
                  Padding(
                    padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                    child: Text('Nepali'),
                  )
                ],
              ),
              Column(
                children: [
                  GridTile(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          color: Colors.purpleAccent,
                        ),
                      ),
                  ),
                  Padding(
                    padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                    child: Text('Chemistry'),
                  )
                ],
              ),
              Column(
                children: [
                  GridTile(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          color: Colors.green,
                        ),
                      ),
                  ),
                  Padding(
                    padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                    child: Text('Biology'),
                  )
                ],
              ),
              Column(
                children: [
                  GridTile(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          color: Colors.red,
                        ),
                      ),
                  ),
                  Padding(
                    padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                    child: Text('Sports'),
                  )
                ],
              ),
              Column(
                children: [
                  GridTile(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          color: Colors.blueAccent,
                        ),
                      ),
                  ),
                  Padding(
                    padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                    child: Text('Math'),
                  )
                ],
              ),
              Column(
                children: [
                  GridTile(
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          color: Colors.yellowAccent,
                        ),
                      ),
                  ),
                  Padding(
                    padding : EdgeInsets.symmetric(horizontal : 8.w,vertical : 8.h),
                    child: Text('physics'),
                  )
                ],
              ),
              GridTile(
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                    ),
                  ),
              ),
              GridTile(
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 50.h,
                      width: 50.w,
                    ),
                  ),
              ),



            ],

          )
        ),

      ],
    );
  }
}
