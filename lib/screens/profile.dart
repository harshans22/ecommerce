import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool rem=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50.r,
                    backgroundImage: AssetImage("assets/profile.webp"),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Harsh",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 80.w,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit)),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone_android_outlined,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "9119922076",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 168, 167, 167)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.mail_outline,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "harshans22@gmail.com",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 168, 167, 167)),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: double.infinity,
                child: Row(children: [
                  SvgPicture.asset("assets/myticket.svg"),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                      child: Text(
                    "My Bookings",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/images/arrow-right.svg",
                        color: Colors.black,
                      )),
                ]),
              ),
              Divider(
                color: const Color.fromARGB(255, 86, 85, 85),
              ),
              Container(
                width: double.infinity,
                child: Row(children: [
                  SvgPicture.asset("assets/paymenthistory.svg"),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                      child: Text(
                    "Payment history",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/images/arrow-right.svg",
                        color: Colors.black,
                      )),
                ]),
              ),
              Divider(
                color: const Color.fromARGB(255, 86, 85, 85),
              ),
              Container(
                width: double.infinity,
                child: Row(children: [
                  SvgPicture.asset("assets/language.svg"),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                      child: Text(
                    "Change language",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/images/arrow-right.svg",
                        color: Colors.black,
                      )),
                ]),
              ),
              Divider(
                color: const Color.fromARGB(255, 86, 85, 85),
              ),
              Container(
                width: double.infinity,
                child: Row(children: [
                  SvgPicture.asset("assets/lock.svg"),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                      child: Text(
                    "Change password",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/images/arrow-right.svg",
                        color: Colors.black,
                      )),
                ]),
              ),
              Divider(
                color: const Color.fromARGB(255, 86, 85, 85),
              ),
              Container(
                width: double.infinity,
                child: Row(children: [
                  SvgPicture.asset("assets/faceid.svg"),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                      child: Text(
                    "Face ID / Touch ID",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  )),
                  CupertinoSwitch(
                    activeColor: Colors.blue,
                    value: rem,
                    onChanged: (bool value) {
                      setState(() {
                        rem = value;
                      });
                    },
                  ),
                ]),
              ),
              Divider(
                color: const Color.fromARGB(255, 86, 85, 85),
              ),
            ],
          ),
        ),
      ),
    );
  }
}