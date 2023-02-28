

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:eschool/view_page/homepage.dart';

class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff205578) ,
      body: Column(
        children: [
          Container(
            height: 450.h,
            child: Center(child: Image.asset('assets/images/reading.JPG',height: 250.h,width:250.w))
          ),
          ClipRRect(
            borderRadius: BorderRadius.vertical(top:Radius.circular(40)),
            child: Container(
              color: Colors.white,
              height: 400.h,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('eSchool',style: TextStyle(fontSize: 35.sp,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('eSchool serves you virtual education at home',style: TextStyle(color: Colors.blueGrey,fontSize: 20.sp),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),

                      child: InkWell(
                        onTap: (){
                          Get.to(()=>HomePage());
                        },
                        child: Container(
                          width: 300.w,


                          decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                                width: 2.w
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(
                              child: Text('Login as Student',style: TextStyle(fontSize: 20.sp,color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                            ),
                          )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),

                      child: InkWell(
                        onTap: (){
                          Get.to(()=>HomePage());
                        },
                        child: Container(
                          width: 300.w,



                          decoration: BoxDecoration(

                            border: Border.all(
                              color: Colors.black,
                              width: 2.w
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(
                              child: Text('Login as Parent',style: TextStyle(fontSize: 20.sp,color: Colors.blueAccent,fontWeight: FontWeight.bold),
                        ),
                            ),
                          )),
                      ),
                    ),
                  ),
                ]
              )

            ),
          )
        ]
      ),
    );
  }
}
