import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';

import '../../constants.dart';
import '../CountryDetailPage/CountrypageWidgets.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
        title: Text("Settings", style: HeadingEllieScript()),
        actions: [
          CupertinoButton(
              child: Text("Done", style: Black_Poppins_16_Bold()),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Hero(
                      tag: "user",
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        margin: EdgeInsets.only(bottom: 20.h),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: GoldStroke, width: 1.2.sp),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1517265446290-91e599dc3b8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dHJhdmVsbGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"))),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                          color: SecondaryGold, shape: BoxShape.circle),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          LineIcons.imageAlt,
                          size: 20.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name", style: Black_Poppins_16_Bold()),
                      SizedBox(
                        height: 60.h,
                        child: TextField(
                          cursorColor: PrimaryGold,
                          decoration: InputDecoration(
                            fillColor: TextFieldColor,
                            filled: true,
                            hintText: "Luis G Petal",
                            hintStyle: Black_Poppins_12_Meduim(),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username", style: Black_Poppins_16_Bold()),
                      SizedBox(
                        height: 60.h,
                        child: TextField(
                          cursorColor: PrimaryGold,
                          decoration: InputDecoration(
                            fillColor: TextFieldColor,
                            filled: true,
                            hintText: "@Luisgpetal7203",
                            hintStyle: Black_Poppins_12_Meduim(),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password", style: Black_Poppins_16_Bold()),
                      SizedBox(
                        height: 60.h,
                        child: TextField(
                          cursorColor: PrimaryGold,
                          decoration: InputDecoration(
                            fillColor: TextFieldColor,
                            filled: true,
                            hintText: "**********",
                            hintStyle: Black_Poppins_12_Meduim(),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Language", style: Black_Poppins_16_Bold()),
                      SizedBox(
                        height: 60.h,
                        child: TextField(
                          cursorColor: PrimaryGold,
                          decoration: InputDecoration(
                            fillColor: TextFieldColor,
                            filled: true,
                            hintText: "Spanish",
                            hintStyle: Black_Poppins_12_Meduim(),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.sp),
                                borderSide:
                                    const BorderSide(color: GoldStroke)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const GoldAndBlackText(goldText: "Sign", blackText: "Out?")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
