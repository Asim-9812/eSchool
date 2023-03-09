
import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/login_pages/parent_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Student_login extends StatefulWidget {
  @override
  State<Student_login> createState() => _Student_loginState();
}

class _Student_loginState extends State<Student_login> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final _form = GlobalKey<FormState>();

  double boxX= -1;
  double boxX1= 1;
  double boxY= 10;
  double boxY1= -10;
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    // Rebuild the screen after 3s which will process the animation from green to blue
    Future.delayed(Duration(milliseconds: 100)).then((value) => setState(() {
      boxX = -1;
      boxY = 1;
      boxX1 = 1;
      boxY1 = -1;
    }));
    Future.delayed(Duration(seconds: 1)).then((value) => setState(() {
      _visible=!_visible;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            alignment: Alignment(boxX, boxY),
            curve: Curves.bounceIn,
            child: Container(
              height: 150.h,
              width: 300.w,
              child: Image.asset('assets/images/bottom.jpg',fit: BoxFit.cover,opacity: const AlwaysStoppedAnimation(.5),),
            ),
          ),

          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            alignment: Alignment(boxX1, boxY1),
            curve: Curves.bounceIn,
            child: Container(
              height: 150.h,
              width: 300.w,
              child: Image.asset('assets/images/top.jpg',fit: BoxFit.cover,opacity: const AlwaysStoppedAnimation(.5),),
            ),
          ),

          AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 700),
            // The green box must be a child of the AnimatedOpacity widget.
            child: Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                width: 350.0,
                height: 550.0,
                // color: Colors.green,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.h),
                      child: Text('Let\'s Sign In',style: TextStyle(color: Colors.black,fontSize: 40.sp,fontWeight: FontWeight.bold),),
                    ),
                    Text('Welcome Back,',style: TextStyle(color: Colors.black,fontSize: 30.sp,),),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Text('You\'ve been missed!',style: TextStyle(color: Colors.black,fontSize: 30.sp,),),
                    ),

                    Form(
                      key: _form,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 18.h),
                              child: TextFormField(
                                  controller: usernameController,
                                  validator:(val){
                                    if(val!.isEmpty){
                                      return 'username is  required';
                                    }
                                    else if(val.length>20){
                                      return 'maximum character exceeded';
                                    }
                                    return null;
                                  },
                                  style: TextStyle(color: Colors.white,fontSize: 25.sp),
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      ),


                                      // fillColor: Colors.black,
                                      // filled: true,
                                      hintText: 'Username', hintStyle: TextStyle(color: Colors.black,fontSize: 25.sp)
                                  )
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 12.h),
                              child: TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  validator:(val){
                                    if(val!.isEmpty){
                                      return 'password is  required';
                                    }
                                    else if(val.length>20){
                                      return 'maximum character exceeded';
                                    }
                                    return null;
                                  },
                                  style: TextStyle(color: Colors.white,fontSize: 25.sp),
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      ),


                                      // fillColor: Colors.black,
                                      // filled: true,
                                      hintText: 'Password', hintStyle: TextStyle(color: Colors.black,fontSize: 25.sp)
                                  )
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                  onTap: (){},
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 20.h),
                                    child: Text('Reset password?',style: TextStyle(color: Colors.blue),),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 8.w),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: button,
                                    foregroundColor: Colors.white,
                                    fixedSize: Size.fromWidth(320.w),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                          color: Colors.black,
                                        )
                                    )
                                ),
                                onPressed: (){},
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 8.w),
                                  child: Text('Sign In',style: TextStyle(fontSize: 25.sp,),),
                                ),
                              ),
                            ),
                          ],
                        )

                    ),
                    
                    Align(
                        alignment: Alignment.center,
                        child: InkWell(
                            onTap: (){
                              Get.to(()=>Parent_login());
                            },
                            child: Text('Login as Parent?',style: TextStyle(color: Colors.blue,fontSize: 20.sp),)))


                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
