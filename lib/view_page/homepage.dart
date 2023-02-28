
import 'package:card_swiper/card_swiper.dart';
import 'package:eschool/view_page/menu.dart';
import 'package:eschool/view_page/userpage.dart';
import 'package:eschool/view_page/subject_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  final List<Widget> pages = [
    UserPage(),
    SubjectPage(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          pages.elementAt(_index),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
              alignment: Alignment(0.0,1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  currentIndex: _index,
                  selectedItemColor: Colors.blue,
                  unselectedItemColor: Colors.black,
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  elevation: 5,
                  onTap:(int index){
                    setState(() {
                      _index=index;
                    });
                  },
                  items:[
                    BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label:'Home'),
                    BottomNavigationBarItem(icon: Icon(Icons.book_outlined),label:'Subjects'),
                    BottomNavigationBarItem(icon: Icon(Icons.menu),label:'Menu'),
                  ]
                ),
              ),
            ),
          )
        ]
      )


    );
  }
}
