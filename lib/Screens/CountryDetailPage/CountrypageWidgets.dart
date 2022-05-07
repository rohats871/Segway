import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:segway/constants.dart';

import '../MoreDestinations/MoreDestinations.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.chevron_left,
          size: 30.sp,
          color: TextColor,
        ));
  }
}

class NotesButton extends StatelessWidget {
  const NotesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: GoldStroke, width: 2.sp),
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 6.h),
                      Text(
                        "Notes",
                        style: Black_Poppins_16_Bold(),
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Plan Ahead For You",
                            style: Gold_Poppins_16_Thin(),
                          ),
                          Text(
                            " Next travel",
                            style: Black_Poppins_16_Bold(),
                          ),
                        ],
                      ),
                      SizedBox(height: 22.h),
                      Container(
                        padding: EdgeInsets.all(16.sp),
                        child: Text(
                          "Day 1: Arrive in Lima.\nDay 2: Sacsayhuaman ruins.\nDay 3: Pisac and Ollantaytambo in the Sacred Valley.Days 4 & 5: Machu Picchu.\nDay 6: Cusco.\nDay 7: Cusco to Puno.\nDay 8: Islands of Lake Titicaca.\nDays 9 & 10: Visit Lima.\n",
                          style: Black_Poppins_16_Bold(),
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        icon: Icon(FontAwesomeIcons.penToSquare, size: 26.sp));
  }
}

class Map extends StatelessWidget {
  const Map({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.sp),
      height: 356.h,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: GoldStroke, width: 2.sp),
          borderRadius: BorderRadius.circular(15.sp),
          color: SecondaryGold,
          image: const DecorationImage(
              image: AssetImage("images/PeruMap.jpeg"), fit: BoxFit.fitWidth)),
    );
  }
}

class IconsandButtons extends StatelessWidget {
  const IconsandButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.h,
          width: 127.w,
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            border: Border.all(color: GoldStroke, width: 1.5.sp),
            borderRadius: BorderRadius.circular(15.sp),
            // color: SecondaryGold,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                FontAwesomeIcons.splotch,
                color: PrimaryGold,
                size: 26.sp,
              ),
              Icon(Icons.local_mall_outlined, size: 26.sp),
              Icon(Icons.share, size: 26.sp)
            ],
          ),
        ),
        Spacer(),
        NotesButton(),
      ],
    );
  }
}

class PlaceData extends StatelessWidget {
  const PlaceData({
    required this.data,
    Key? key,
  }) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Black_Poppins_14(),
    );
  }
}

class MoreDestinationsWidget extends StatelessWidget {
  const MoreDestinationsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Destinations", style: Gold_Poppins_12_Meduim()),
        Spacer(),
        GestureDetector(
          child: Text("More", style: Gold_Poppins_12_Meduim()),
          onTap: () {
            Get.to(MoreDestinations());
          },
        ),
      ],
    );
  }
}

class GoldAndBlackText extends StatelessWidget {
  const GoldAndBlackText({
    required this.blackText,
    required this.goldText,
    Key? key,
  }) : super(key: key);
  final String blackText;
  final String goldText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.sp, top: 10.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$goldText ",
            style: Gold_Poppins_16_Thin(),
          ),
          Text(
            blackText,
            style: Black_Poppins_16_Bold(),
          ),
        ],
      ),
    );
  }
}

class DataTextTable extends StatelessWidget {
  const DataTextTable({
    required this.text1,
    required this.text2,
    Key? key,
  }) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(2.sp),
            child: Text(
              text1,
              style: Black_Poppins_12_Meduim(),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(2.sp),
            child: Text(
              text2,
              style: Black_Poppins_12_Meduim(),
            ),
          ),
        )
      ],
    );
  }
}
