import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const PrimaryGold = Color(0xFFD7B748);
const SecondaryGold = Color(0x80CDBA74);
const TextColor = Color(0xB3000000);
const GoldStroke = Color(0xBFD7B748);
const TextFieldColor = Color(0x4DCDBA74);
const Secondary100 = Color(0xFFF0EAD5);

TextStyle Black_Poppins_16_Bold() {
  return TextStyle(
      color: Colors.black,
      fontSize: 16.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700);
}

TextStyle Gold_Poppins_16_Thin() {
  return TextStyle(
      color: PrimaryGold,
      fontSize: 16.sp,
      fontWeight: FontWeight.w100,
      fontFamily: 'Poppins');
}

TextStyle Gold_Poppins_14_Thin() {
  return TextStyle(
      color: PrimaryGold,
      fontSize: 16.sp,
      fontWeight: FontWeight.w100,
      fontFamily: 'Poppins');
}

TextStyle Black_Poppins_12_Thin() {
  return TextStyle(
      color: Colors.black,
      fontSize: 12.sp,
      fontWeight: FontWeight.w100,
      fontFamily: 'Poppins');
}

TextStyle Black_Poppins_12_Meduim() {
  return TextStyle(
      color: Colors.black,
      fontSize: 14.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500);
}

TextStyle Gold_Poppins_12_Meduim() {
  return TextStyle(
      color: PrimaryGold,
      fontSize: 14.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700);
}

TextStyle Black_Poppins_14() {
  return TextStyle(
      color: Colors.black,
      fontSize: 14.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600);
}

TextStyle AppLogoTextStyle() {
  return TextStyle(
      color: Colors.black, fontSize: 40.sp, fontFamily: 'MadinaScript');
}

TextStyle HeadingEllieScript() {
  return TextStyle(
      fontSize: 50.sp, fontFamily: 'Ellie-Script', color: PrimaryGold);
}

TextStyle Black_Poppins_18_Bold() {
  return TextStyle(
      color: Colors.black,
      fontSize: 18.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600);
}

TextStyle Black_Poppins_18_Thin() {
  return TextStyle(
      color: Colors.black,
      fontSize: 18.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w200);
}
