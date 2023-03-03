

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
                      mySelectedEvents[DateFormat('yyyy-MM-dd').format(_selectedDate!)]= [];
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
    return Column(
      children: [
        SizedBox(
          height:60.h
        ),
        Text('Attendance',style : TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,color: Colors.white)),
        SizedBox(
            height:40.h
        ),
        Container(
          // color:Colors.red,
        width:320.w,
        height: 360.h,
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
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: SizedBox(
                          width: 310.w,
                          height: 60.h,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.white,
                    child: Center(
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: SizedBox(
                          width: 315.w,
                          height: 275.h,
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
            rowHeight: 40.h,
            eventLoader: _attendance,
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
                weekdayStyle: TextStyle(color:Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 20.sp),
                weekendStyle: TextStyle(color:Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 20.sp)
              ),
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2021,01,01),
              lastDay: DateTime.utc(2024,12,12),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                headerMargin: EdgeInsets.only(left:10.w,right:10.w,top:10.h,bottom:20.h),
                titleCentered: true,
                titleTextStyle: TextStyle(fontWeight: FontWeight.bold),

              ),
              calendarStyle: CalendarStyle(

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

        Container(
          width: 320.w,
          height:180.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                width: 140.w,
                height: 140.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Total Present',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.sp,
                    )
                  ],
                )
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
                width: 140.w,
                height: 140.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Total Absent',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.sp,
                    )
                  ],
                )
              ),



            ]
          )
        ),
        InkWell(
          onTap: () async {
            _showDialogEvent();
          },
          child: Container(
            width: 50.w,
            height: 50.h,
            child: Center(
              child: Card(
                elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.sp),
                  ),
                  child: Center(
                      child: Icon(Icons.add,color: Colors.black,)
                  )
              ),
            ),
          ),
        )

      ],
    );
  }
}
