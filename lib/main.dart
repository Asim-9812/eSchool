

import 'package:eschool/view_page/homepage_student/default_page.dart';
import 'package:eschool/view_page/homepage_student/overview_page.dart';
import 'package:eschool/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:eschool/view_page/login_pages/login_page.dart';
import 'package:eschool/view_page/login_pages/teacher_login.dart';
import 'package:eschool/view_page/homepage_student/assignment_page.dart';
import 'package:eschool/view_page/sample_pages/report_tabs/reports.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(milliseconds: 50));


  runApp(ProviderScope(child: Home()));

}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // TODO: implement build
    return ScreenUtilInit(
      designSize: const Size(392, 850),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {

        return GetMaterialApp(
          theme: _buildTheme(Brightness.dark),
          debugShowCheckedModeBanner: false,
          home: child,
          builder: (BuildContext context, Widget? child){
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
        data: data.copyWith(
        textScaleFactor: 0.9),
        child: child!,
        );
          } ,
        );
      },
      child:  Teacher_login()

    );
  }
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.nunitoTextTheme(baseTheme.textTheme),
  );
}