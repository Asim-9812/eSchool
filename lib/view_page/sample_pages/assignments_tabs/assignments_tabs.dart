


import 'dart:convert';

import 'package:eschool/constants/colors.dart';
import 'package:eschool/view_page/sample_pages/assignments_tabs/assignments_samples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssignmentTabs extends StatefulWidget {
  const AssignmentTabs({Key? key}) : super(key: key);

  @override
  State<AssignmentTabs> createState() => _AssignmentTabsState();
}

class _AssignmentTabsState extends State<AssignmentTabs> with TickerProviderStateMixin{


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
        bottom: TabBar(

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
    body: TabBarView(
    controller: _tabController,
    children: [
    Assignments(),
    Assignments(),
    Assignments(),
    Assignments(),
    Assignments(),
    Assignments(),
    Assignments(),
    Assignments(),
    ],
    ),);
  }
}