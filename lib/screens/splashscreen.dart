import 'dart:async';

import 'package:ecommerce/utils/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

late String name;

class _SplashScreenState extends State<SplashScreen> {
  static const String KEYNAME = "name";
  bool _showImage = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Navbar()),
      );
    });
    Timer(const Duration(seconds: 1), () {
      setState(() {
        _showImage = true; // Set _showImage to true after 2 seconds
      });
    });
  }

 

  @override
  Widget build(BuildContext context) {
    print("splash screen");
    return Scaffold(
      body: Center(
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SvgPicture.asset("assets/images/quickmart.svg",height: 50.h,width: 200.w,)
            ),
            SizedBox(height: 10.h,),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              bottom: 0.h, 
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _showImage ? 1 : 0, 
                child: Center(child: Text("Shop your favorite",style: TextStyle(color: Colors.black,fontSize: 15.sp),))), 
            ),
          ],
        ),
      ),
    );
  }
}


