import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:segway/Screens/CountryDetailPage/CountrypageWidgets.dart';
import 'package:segway/Screens/HomeScreen/HomeScreenWidgets.dart';

import '../../constants.dart';
import '../LocationDetail/LocationDetail.dart';
import 'ProfileScreenWidgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const GoBackButton(),
        title: Text("Profile", style: HeadingEllieScript()),
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: SingleChildScrollView(
                  child: Column(children: [
                SizedBox(
                  height: 124.h,
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(child: UsernameAndDetailColumn()),
                        const Spacer(),
                        Expanded(
                            child: Column(children: const [
                          UserImage(),
                          Spacer(),
                          EditInfoButton()
                        ]))
                      ]),
                ),
                SizedBox(height: 10.h),
                Container(
                    margin: EdgeInsets.only(bottom: 10.h),
                    child: Row(children: [
                      Expanded(
                          child: Image(
                              height: 85.h,
                              width: 166.15.w,
                              image: const AssetImage("images/peeps.jpg"))),
                      SizedBox(width: 10.w),
                      Expanded(
                          child: Column(children: [
                        SizedBox(
                            width: 167.15.w,
                            child: Text(
                                "Tell Your Friends To Go On A Next Trip And Plan With Us",
                                style: Black_Poppins_16_Bold())),
                        Container(
                            height: 32.h,
                            width: 167.w,
                            decoration: BoxDecoration(
                                color: SecondaryGold,
                                border: Border.all(
                                    color: GoldStroke, width: 1.2.sp),
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                                child: InkWell(
                                    onTap: () {},
                                    child: Text("Invite Friends",
                                        textAlign: TextAlign.center,
                                        style: Black_Poppins_12_Meduim()))))
                      ]))
                    ])),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Places Visited", style: Black_Poppins_16_Bold()),
                      TextButton(
                          onPressed: () {},
                          child:
                              Text("View All", style: Black_Poppins_16_Bold()))
                    ]),
                GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      // crossAxisSpacing: 10.sp,
                      childAspectRatio: 0.8,
                      // mainAxisSpacing: 25.sp,
                      crossAxisCount: 3),
                  children: [
                    const NearByAttractionSquare(
                        city: "Cusco",
                        placeName: "Rainbow Mountains",
                        imageUrlSquare:
                            "https://images.unsplash.com/flagged/photo-1553213332-e0dfdb4f6d19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cmFpbmJvdyUyMG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
                    const NearByAttractionSquare(
                        city: "Lima",
                        placeName: "Mira Flores",
                        imageUrlSquare:
                            "https://images.unsplash.com/photo-1531968455001-5c5272a41129?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGVydXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
                    Hero(
                      transitionOnUserGestures: true,
                      tag: "machupichu",
                      child: NearByAttractionSquare(
                        onTap: () {
                          Get.to(const LocationDetail());
                        },
                        city: "Cusco",
                        placeName: "Machu Pichu",
                        imageUrlSquare:
                            "https://images.unsplash.com/photo-1415804941191-bc0c3bbac10d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVydXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
                      ),
                    ),
                    const NearByAttractionSquare(
                        city: "Puno",
                        placeName: "Lake Titicaca",
                        imageUrlSquare:
                            "https://images.unsplash.com/photo-1544144554-41d909fadcf3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFrZSUyMHRpdGljYWNhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
                    const NearByAttractionSquare(
                        city: "Nazca",
                        placeName: "Nazca Lines",
                        imageUrlSquare:
                            "https://images.unsplash.com/photo-1602839993317-7b77dff450d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmF6Y2ElMjBsaW5lc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
                    const NearByAttractionSquare(
                        city: "Ica",
                        placeName: "Huacachina",
                        imageUrlSquare:
                            "https://images.unsplash.com/photo-1527736848781-72dc3b2ee00f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aHVhY2FjaGluYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Trophies", style: Black_Poppins_16_Bold()),
                      TextButton(
                          onPressed: () {},
                          child:
                              Text("View All", style: Black_Poppins_16_Bold()))
                    ]),
                GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            // crossAxisSpacing: 10.sp,
                            childAspectRatio: 0.8,
                            // mainAxisSpacing: 25.sp,
                            crossAxisCount: 3),
                    children: [
                      Trophy(onTap: () async {
                        await showDialog(
                            context: context,
                            builder: (_) => Dialog(
                                backgroundColor: Colors.white,
                                child: Padding(
                                    padding: EdgeInsets.all(16.sp),
                                    child: const Image(
                                        image:
                                            AssetImage("images/Award.png")))));
                      }),
                      Trophy(onTap: () {}),
                      Trophy(onTap: () {}),
                      Trophy(onTap: () {}),
                      Trophy(onTap: () {}),
                      Trophy(onTap: () {})
                    ]),
                const GoldAndBlackText(
                    goldText: "Made In", blackText: "New Delhi"),
                Text("Version 2.1.1")
              ])))),
    );
  }
}
