import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:segway/Screens/main_home_page.dart';
import 'package:segway/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 845),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: Colors.white,
              splashColor: SecondaryGold,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.white),
          color: Colors.white,
          home: const MainHomePage()),
    );
  }
}
