

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';


class Attendance extends StatefulWidget {

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {

  Map<String, List> mySelectedEvents={};

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedDate = _focusedDay;
  }

  List _attendance(DateTime dateTime){
    if(mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)]!=null){
      return mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)]!;
    } else{
      return [];
    }
  }

  _showDialogEvent() async {
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Center(child: Text('Attendance')),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green
                ),
                  onPressed: (){

                  setState(() {
                    mySelectedEvents[DateFormat('yyyy-MM-dd').format(_selectedDate!)]=[
                      {
                        'present':true
                      }
                    ];
                  });
                  Navigator.pop(context);

                  } ,
                  child: Text('Present',style: TextStyle(color: Colors.white))
              ),TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red
                  ),
                  onPressed: (){

                    setState(() {
                      // mySelectedEvents[DateFormat('yyyy-MM-dd').format(_selectedDate!)]!.removeAt();
                    });
                    Navigator.pop(context);

                  } ,
                  child: Text('Absent',style: TextStyle(color: Colors.white),)
              ),
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
                SizedBox(
                height:20.h
                   ),
                Text('Attendance',style : TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,color: Colors.white)),
                SizedBox(
                height:80.h
                ),

          Container(
            color: Colors.white,
            height: 400.h,
            width: 300.w,
            child: TableCalendar(
                focusedDay: _focusedDay,
                firstDay: DateTime(2021),
                lastDay: DateTime(2024),
              calendarFormat: _calendarFormat,


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

              onFormatChanged: (format){
                  if(_calendarFormat!=format){
                    setState(() {
                      _calendarFormat= format;
                    });
                  }
              },
              onPageChanged: (focusedDay){
                  _focusedDay=focusedDay;
              },

              eventLoader: _attendance,
              calendarStyle: CalendarStyle(
                markerSize: 40,
                markerDecoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(100)
                )
              ),


            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () async {
                    _showDialogEvent();
                  },
                  child: Container(
                    height: 170.h,
                    width: 170.h,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Total Present',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.sp),),
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                InkWell(
                  onTap: () async {
                    _showDialogEvent();
                  },
                  child: Container(
                    height: 170.h,
                    width: 170.h,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Total Absent',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.sp)),
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
          
        ]),

    );
  }
}
