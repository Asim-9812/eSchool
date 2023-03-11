

import 'package:eschool/view_page/homepage_student/assignment_page.dart';
import 'package:eschool/view_page/homepage_student/menu_sheet.dart';
import 'package:eschool/view_page/homepage_student/overview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:eschool/constants/colors.dart';
import 'package:icon_decoration/icon_decoration.dart';

class DefaultPage extends StatefulWidget {

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> with TickerProviderStateMixin{

  int _index = 0;
  double boxX= 0;
  double boxY= 10;

  final List<Widget>  _pages = [
    OverviewPage(),
    AssignmentPage(),
    MenuPage()
  ];

  @override
  void initState() {
    super.initState();
    // Rebuild the screen after 3s which will process the animation from green to blue
    Future.delayed(Duration(milliseconds: 300)).then((value) => setState(() {
      boxX = 0;
      boxY = 0.9;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          _pages.elementAt(_index),

          AnimatedContainer(
            alignment: Alignment(boxX, boxY),
            curve: Curves.bounceIn,
            duration: Duration(milliseconds:800),
            child: Card(
              elevation: 5,
              color: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 350.w,
                  height: 70.h,
                  child: BottomNavigationBar(
                    backgroundColor: Colors.white,
                      selectedItemColor: nav_color,
                      unselectedItemColor: Colors.white,
                      showSelectedLabels: true,
                      showUnselectedLabels: false,
                      onTap:(int index){
                        setState(() {
                          _index=index;
                        });
                      },
                      currentIndex: _index,
                      items:[
                        BottomNavigationBarItem(icon: DecoratedIcon(
                          icon: Icon(EvaIcons.home,size: 27.sp,),
                          decoration: IconDecoration(border: IconBorder(
                            width: 3.w
                          )),
                        ),label:'Home'),
                        BottomNavigationBarItem(icon: DecoratedIcon(
                            icon: Icon(EvaIcons.book,size: 27.sp,),
                            decoration: IconDecoration(border: IconBorder(
                                width: 3.w
                            )),),label:'Subjects'),
                        BottomNavigationBarItem(icon: DecoratedIcon(
                          icon: Icon(EvaIcons.menu,size: 27.sp,),
                          decoration: IconDecoration(border: IconBorder(
                              width: 3.w
                          )),),label:'Menu'),
                      ]

                  ),
                ),
              ),
            ) ,
          ),


        ],
      ),
    );
  }
}
