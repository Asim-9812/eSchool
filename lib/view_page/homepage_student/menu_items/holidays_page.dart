

import 'package:eschool/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';



class Holidays extends StatefulWidget {

  @override
  State<Holidays> createState() => _HolidaysState();
}

class _HolidaysState extends State<Holidays> {

  Map<String, List> mySelectedEvents={};

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedDate = _focusedDay;
  }

  List _holidays(DateTime dateTime){
    if(mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)]!=null){
      return mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)]!;
    } else{
      return [];
    }
  }

  // _showDialogEvent() async {
  //   await showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         title: Center(child: Text('Holidays')),
  //         content: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             TextButton(
  //                 style: TextButton.styleFrom(
  //                     backgroundColor: Colors.green
  //                 ),
  //                 onPressed: (){
  //
  //                   setState(() {
  //                     mySelectedEvents[DateFormat('yyyy-MM-dd').format(_selectedDate!)]=[
  //                       {
  //                         'present':true
  //                       }
  //                     ];
  //                   });
  //                   Navigator.pop(context);
  //
  //                 } ,
  //                 child: Text('Present',style: TextStyle(color: Colors.white))
  //             ),TextButton(
  //                 style: TextButton.styleFrom(
  //                     backgroundColor: Colors.red
  //                 ),
  //                 onPressed: (){
  //
  //                   setState(() {
  //                     mySelectedEvents[DateFormat('yyyy-MM-dd').format(_selectedDate!)]= [];
  //                   });
  //                   Navigator.pop(context);
  //
  //                 } ,
  //                 child: Text('Absent',style: TextStyle(color: Colors.white),)
  //             ),
  //           ],
  //         ),
  //       )
  //   );
  // }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height:60.h
        ),
        Text('Holidays',style : TextStyle(fontSize: 30.sp,color: Colors.white)),
        SizedBox(
            height:40.h
        ),
        Container(
          // color:Colors.red,
            width:350.w,
            height: 430.h,
            child: Stack(
                children:[

                  Positioned(
                    top: 5.h,
                    child: Column(
                      children: [
                        Container(
                          // color: Colors.white,
                          child: Center(
                            child: Card(
                              color: Colors.white,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: SizedBox(
                                width: 340.w,
                                height: 60.h,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // color: Colors.white,
                          child: Center(
                            child: Card(
                              color: Colors.white,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: SizedBox(
                                width: 340.w,
                                height: 330.h,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),


                  TableCalendar(
                    daysOfWeekHeight: 20.h,
                    // shouldFillViewport: true,
                    rowHeight: 50.h,
                    eventLoader: _holidays,
                    onDaySelected: (selectedDay, focusedDay) {
                      if (!isSameDay (_selectedDate, selectedDay)) {
                        // Call `setState()` when updating the selected day
                        setState(() {
                          _selectedDate = selectedDay;
                          _focusedDay = focusedDay;
                        });
                      }
                    },
                    selectedDayPredicate: (day){
                      return isSameDay(_selectedDate,day);
                    },
                    onPageChanged: (focusedDay){
                      _focusedDay=focusedDay;
                    },
                    daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: TextStyle(color:Colors.blueAccent,fontSize: 15.sp),
                        weekendStyle: TextStyle(color:Colors.blueAccent,fontSize: 15.sp)
                    ),
                    focusedDay: _focusedDay,
                    firstDay: DateTime.utc(2021,01,01),
                    lastDay: DateTime.utc(2024,12,12),
                    headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        headerMargin: EdgeInsets.only(left:10.w,right:10.w,top:10.h,bottom:20.h),
                        titleCentered: true,
                        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        leftChevronIcon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                        rightChevronIcon: Icon(Icons.arrow_forward_ios,color: Colors.black,)
                    ),

                    calendarStyle: CalendarStyle(
                      defaultTextStyle:TextStyle(color: Colors.black) ,
                      markerSize: 25.sp,
                      markerDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green.withOpacity(0.7)
                      ),
                      markersAutoAligned: false,
                      markersAlignment: Alignment.center,
                      // cellMargin: EdgeInsets.all(10),


                      outsideDaysVisible: false,
                      // tablePadding: EdgeInsets.symmetric(horizontal:10),


                    ),



                  ),]
            )
        ),

        SizedBox(
            height:30.h
        ),


        // InkWell(
        //   onTap: () async {
        //     _showDialogEvent();
        //   },
        //   child: Container(
        //     width: 50.w,
        //     height: 50.h,
        //     child: Center(
        //       child: Card(
        //           elevation: 10,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(100.sp),
        //           ),
        //           child: Center(
        //               child: Icon(Icons.add,color: Colors.black,)
        //           )
        //       ),
        //     ),
        //   ),
        // )

      ],
    );
  }
}