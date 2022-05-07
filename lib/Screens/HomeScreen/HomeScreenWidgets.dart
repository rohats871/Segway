import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:segway/constants.dart';

import '../CountryDetailPage/CountryDetailsPage.dart';

class CountryStoryWithName extends StatelessWidget {
  CountryStoryWithName(
      {required this.countryName, required this.imageUrl, required this.onTap});
  final String imageUrl;
  final String countryName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 18.w),
        height: 90.h,
        width: 60.w,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: GoldStroke, width: 1.2.sp),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(imageUrl))),
              height: 65.h,
              width: 65.w,
            ),
            SizedBox(height: 7.h),
            FittedBox(
              child: Text(
                countryName,
                style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Ellie-Script',
                    overflow: TextOverflow.clip),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: TextField(
        cursorColor: GoldStroke,
        cursorHeight: 26.h,
        onTap: () {},
        decoration: InputDecoration(
            focusColor: GoldStroke,
            labelText: "Search By Cities or Countries...",
            labelStyle: TextStyle(
                color: TextColor, fontSize: 14.sp, fontWeight: FontWeight.bold),
            prefixIcon: Icon(
              Icons.search,
              size: 26.sp,
              color: GoldStroke,
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: GoldStroke, width: 2.sp),
                borderRadius: BorderRadius.circular(100.sp)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: GoldStroke, width: 2.sp),
                borderRadius: BorderRadius.circular(100.sp)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: GoldStroke, width: 2.sp),
                borderRadius: BorderRadius.circular(100.sp))),
      ),
    );
  }
}

class CountryStories extends StatelessWidget {
  const CountryStories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 95.h,
        margin: EdgeInsets.only(bottom: 16.h),
        width: double.infinity,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          CountryStoryWithName(
              onTap: () {
                print("Peru");
                Get.to(const CountryInformationPage());
              },
              countryName: "Peru",
              imageUrl:
                  'https://images.unsplash.com/photo-1531968455001-5c5272a41129?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2106&q=80'),
          CountryStoryWithName(
              onTap: () {},
              countryName: "Mexico",
              imageUrl:
                  'https://images.unsplash.com/photo-1568402102990-bc541580b59f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWV4aWNvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'),
          CountryStoryWithName(
              onTap: () {},
              countryName: "India",
              imageUrl:
                  'https://images.unsplash.com/photo-1532664189809-02133fee698d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aW5kaWF8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'),
          CountryStoryWithName(
              onTap: () {},
              countryName: "Bolivia",
              imageUrl:
                  'https://images.unsplash.com/photo-1595833855178-e2fd970421a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGJvbGl2aWF8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'),
          CountryStoryWithName(
              onTap: () {},
              countryName: "France",
              imageUrl:
                  'https://images.unsplash.com/photo-1566865204669-c7b93be298bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjV8fGZyYW5jZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'),
          CountryStoryWithName(
              onTap: () {},
              countryName: "Peru",
              imageUrl:
                  'https://images.unsplash.com/photo-1531968455001-5c5272a41129?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2106&q=80'),
          CountryStoryWithName(
              onTap: () {},
              countryName: "Mexico",
              imageUrl:
                  'https://images.unsplash.com/photo-1568402102990-bc541580b59f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWV4aWNvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'),
          CountryStoryWithName(
              onTap: () {},
              countryName: "India",
              imageUrl:
                  'https://images.unsplash.com/photo-1532664189809-02133fee698d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aW5kaWF8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'),
          CountryStoryWithName(
              onTap: () {},
              countryName: "Bolivia",
              imageUrl:
                  'https://images.unsplash.com/photo-1595833855178-e2fd970421a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGJvbGl2aWF8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'),
          CountryStoryWithName(
              onTap: () {},
              countryName: "France",
              imageUrl:
                  'https://images.unsplash.com/photo-1566865204669-c7b93be298bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjV8fGZyYW5jZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
        ]));
  }
}

class NearByAttractionSquare extends StatelessWidget {
  const NearByAttractionSquare({
    required this.city,
    required this.imageUrlSquare,
    required this.placeName,
    this.onTap,
    Key? key,
  }) : super(key: key);
  final String imageUrlSquare;
  final String placeName;
  final String city;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 104.h,
                  width: 103.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: GoldStroke),
                      borderRadius: BorderRadius.circular(10.sp),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(imageUrlSquare)))),
              FittedBox(
                child: Text(placeName,
                    textAlign: TextAlign.center,
                    style: Black_Poppins_12_Meduim()),
              ),
              FittedBox(
                child: Text(city,
                    textAlign: TextAlign.center,
                    style: Black_Poppins_12_Meduim()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
