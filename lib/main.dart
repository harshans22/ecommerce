import 'package:ecommerce/screens/homescreen.dart';
import 'package:ecommerce/screens/splashscreen.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/dimension.dart';
import 'package:ecommerce/utils/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppDimensions.screenSize,
        minTextAdapt: true,
         builder: (context, child) => Material(
           child: MaterialApp(
             theme: ThemeData.light().copyWith(
                scaffoldBackgroundColor:
                    primaryColor, //copywith used to set theme for selected widget
              ),
            debugShowCheckedModeBanner: false,
        home: SplashScreen()
         )
         ),
        
    );
  }
}


