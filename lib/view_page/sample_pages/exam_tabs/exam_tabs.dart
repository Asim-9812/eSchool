


import 'dart:convert';

import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/sample_pages/exam_tabs/exam_sample.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExamTabs extends StatefulWidget {
  const ExamTabs({Key? key}) : super(key: key);

  @override
  State<ExamTabs> createState() => _ExamTabsState();
}

class _ExamTabsState extends State<ExamTabs> with TickerProviderStateMixin{


  var _scrollViewController;
  var _tabController;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
    _tabController = TabController(vsync: this, length: 8);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(

      floatHeaderSlivers: false,
      controller: _scrollViewController,
      headerSliverBuilder: (context, bool) => [
        SliverAppBar(
          automaticallyImplyLeading: false,

          backgroundColor: Colors.white,
          title: TabBar(

              labelStyle: TextStyle(fontSize: 15.sp),
              controller: _tabController,
              isScrollable: true,
              labelPadding: EdgeInsets.only(left: 20.w, right: 20.w),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              // indicatorColor: primary,
              indicator: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(10)
              ),
              tabs: [
                Tab(text: 'All Subjects',),
                Tab(text: 'Math'),
                Tab(text: 'Science'),
                Tab(text: 'English'),
                Tab(text: 'Account'),
                Tab(text: 'Computer'),
                Tab(text: 'Drawing'),
                Tab(text: 'Music'),

              ]
          ),
        ),
      ],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: TabBarView(
          controller: _tabController,
          children: [
           Exams(),
           Exams(),
           Exams(),
           Exams(),
           Exams(),
           Exams(),
           Exams(),
           Exams(),
          ],
        ),
      ),);
  }
}