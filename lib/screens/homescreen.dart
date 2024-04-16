import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Map> slider = [
    {"title": "Carry Your World, Carry It Well",
    "path":"assets/images/handbag2.png",

    },
    {"title":"The Dress Code for anytime",
    "path":"assets/images/formals.png"
    },
    {"title":"Fashion Sale New Collection",
    "path":"assets/images/maleshirt.png"}
  ];
   int currentindex=0;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: SizedBox(
            height: 40.h,
            width: 130.w,
            child: SvgPicture.asset(
              "assets/images/quickmart.svg",
              fit: BoxFit.fill,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    radius: 30.r,
                    child: Image.asset(
                      "assets/images/men.png",
                      height: 35.h,
                      width: 35.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    radius: 30.r,
                    child: Image.asset(
                      "assets/images/women.png",
                      height: 35.h,
                      width: 35.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    radius: 30.r,
                    child: Image.asset(
                      "assets/images/electronics.png",
                      height: 35.h,
                      width: 35.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    radius: 30.r,
                    child: Image.asset(
                      "assets/images/handbag.png",
                      height: 35.h,
                      width: 35.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    radius: 30.r,
                    child: Image.asset(
                      "assets/images/shoes.png",
                      height: 35.h,
                      width: 35.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h,),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider( options:  CarouselOptions(
                                          // reverse: true,
                                          onPageChanged: (index, reason) {
                                            setState(() {
                                              currentindex = index;
                                            });
                                          },
                                          autoPlayInterval:
                                              const Duration(seconds: 2),
                                          autoPlayAnimationDuration:
                                              const Duration(seconds: 1),
                                          autoPlay: true,
                                          // enlargeCenterPage: true,
                                          // enlargeFactor: 0.2,
                                          viewportFraction: 1,
                                          
                                        ),items:slider.map((e) =>  Stack(
                    children: [
                      Container(
                        height: 220.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5.r)
                        ),
                      ),
                      SizedBox(
                        height: 220.h,
                        width: double.infinity,
                        child: Image.asset(e["path"],fit: BoxFit.cover,)
                      ),
                      SizedBox(
                        height: 220.h,
                        width: double.infinity,
                        child: Padding(
                          padding:  EdgeInsets.fromLTRB(30.w,30.h,80.w,40.h),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            SizedBox(height: 20.h,),
                            Text("|   SUMMER COLLECTION 2024",style: TextStyle(fontSize: 12.sp,color: const Color.fromARGB(255, 185, 184, 184),fontWeight: FontWeight.w600),),
                            SizedBox(height: 20.h,),
                            SizedBox(width: 120.w,
                              child: Text(e["title"],maxLines: 4,style: TextStyle(fontSize: 17.sp,  fontWeight: FontWeight.w500,color: mobileBackgroundColor.withOpacity(0.8)),)),
                          ],),
                        )
                      ),
                     
                    ],
                  )).toList()),
                  Padding(
                    padding:  EdgeInsets.all(10.h),
                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: slider
                                          .asMap()
                                          .entries
                                          .map((entry) {
                                        return Container(
                                          width:25.w,
                                          height: 3.h,
                                          margin: const EdgeInsets.symmetric(
                                            horizontal: 3.0,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              color: currentindex == entry.key
                                                  ? mobileBackgroundColor
                                                  : mobileBackgroundColor.withOpacity(0.2)),
                                        );
                                      }).toList(),
                                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h,),
              Stack(
                    children: [
                      Container(
                        height: 150.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 82, 81, 81).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5.r)
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                          SizedBox(
                            height: 150.h,
                            child: Image.asset("assets/images/grey.png",width: 150.w,fit: BoxFit.cover,)
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150.h,
                        width: double.infinity,
                        child: Padding(
                          padding:  EdgeInsets.fromLTRB(20.w,20.h,0,40.h),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            SizedBox(height: 10.h,),
                            Text("For Gen",style: TextStyle(fontSize: 15.sp,color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.w600),),
                            SizedBox(height: 5.h,),
                            SizedBox(width: 180.w,
                              child: Text("HANG OUT PARTY Try Awesome",style: TextStyle(fontSize:20.sp,  fontWeight: FontWeight.w300,color: Colors.white),)),
                          ],),
                        )
                      ),
                     
                    ],
                  ),
               
             SizedBox(height: 10.h,),
             Row(
              children: [
                Flexible(flex: 1,
                  child:Container(
                    color: Colors.grey.withOpacity(0.2),
                    height:200.h,
                    child: Image.asset("assets/images/keep.jpg",fit: BoxFit.fill,)
                  ) ),
                  SizedBox(width: 10.w,),
                Flexible(flex: 1,
                  child:Container(
                    color: Colors.grey.withOpacity(0.2),
                    height: 200.h,
                    child: Image.asset("assets/images/second.jpeg",fit: BoxFit.fill),
                  ) )
               
              ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
