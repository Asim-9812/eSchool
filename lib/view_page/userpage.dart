

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(bottom:Radius.circular(30)),
          child: Stack(
              children:[ Container(
                color: Colors.blue,
                height: 200.h,
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0,top: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 30.sp,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Username',style:TextStyle(fontSize: 32.sp,color: Colors.white,fontWeight: FontWeight.bold),),
                              Text('Class:9A | Roll No. 9',style:TextStyle(fontSize: 18.sp,color: Colors.white),)
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
            width: 350.w,
            height: 200.h,
            child: Swiper(
              pagination: SwiperPagination(),
              itemCount: 4,
              loop: true,
              viewportFraction: 1,
              scale: 0.9,
              itemBuilder: (context,index){
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.grey,
                  child: SizedBox(
                    width: 350,
                    height: 100,
                    child: Center(child: Text('Exam Date... ')),
                  ),
                );
              },
            )
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('My Subjects',style:TextStyle(fontSize: 30.sp,fontWeight : FontWeight.bold,color: Colors.black) ),
        ),
        Container(
          height: 350.h,
          width: double.infinity,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5,crossAxisSpacing: 5),
            children: [
              Column(
                children: [
                  GridTile(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 90.h,
                          width: 90.w,
                          color: Colors.redAccent,
                        ),
                      ),
                  ),
                  Text('English')
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
                          color: Colors.greenAccent,
                        ),
                      ),
                  ),
                  Text('Social')
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
                        ),
                      ),
                  ),
                  Text('Nepali')
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
                          color: Colors.purpleAccent,
                        ),
                      ),
                  ),
                  Text('Chemistry')
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
                          color: Colors.green,
                        ),
                      ),
                  ),
                  Text('Biology')
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
                          color: Colors.red,
                        ),
                      ),
                  ),
                  Text('Sports')
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
                          color: Colors.blueAccent,
                        ),
                      ),
                  ),
                  Text('Math')
                ],
              ),
              Column(
                children: [
                  GridTile(
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 90.h,
                          width: 90.w,
                          color: Colors.yellowAccent,
                        ),
                      ),
                  ),
                  Text('physics')
                ],
              ),

            ],

          )
        )
      ],
    );
  }
}
