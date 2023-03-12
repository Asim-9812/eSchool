import 'package:eschool/view_page/homepage_student/default_page.dart';
import 'package:eschool/view_page/homepage_student/overview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:eschool/view_page/login_pages/login_page.dart';
import 'package:eschool/view_page/homepage_student/assignment_page.dart';
import 'package:eschool/view_page/sample_pages/report_tabs/reports.dart';
import 'package:google_fonts/google_fonts.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(milliseconds: 50));


  runApp(ProviderScope(child: Home()));

}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        );
      },
      child: LoginPage(),
    );
  }
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.nunitoTextTheme(baseTheme.textTheme),
  );
}