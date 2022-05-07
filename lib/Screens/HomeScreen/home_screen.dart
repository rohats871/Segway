import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:segway/Screens/SettingsPage/SettingsPage.dart';
import 'package:segway/constants.dart';

import '../ProfileScreen/ProfileScreen.dart';
import '../ProfileScreen/ProfileScreenWidgets.dart';
import 'HomeScreenWidgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            toolbarHeight: 68.h,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: UserImage(),
                onTap: () {
                  Get.to(SettingsPage());
                },
              ),
            ),
            title: Text("Segway", style: AppLogoTextStyle()),
            actions: [
              IconButton(
                  icon: Icon(CupertinoIcons.slider_horizontal_3,
                      size: 24.sp, color: PrimaryGold),
                  onPressed: () {
                    Get.to(const ProfilePage());
                  })
            ]),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(16.sp),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Container(
                          margin: EdgeInsets.only(top: 16.h, bottom: 16.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            Text("Explore Some",
                                                style: Gold_Poppins_16_Thin()),
                                            Text("Popular Locations...",
                                                style: Black_Poppins_16_Bold())
                                          ])),
                                      GestureDetector(
                                          onTap: () {},
                                          child: const Icon(
                                              CupertinoIcons.chevron_down,
                                              color: PrimaryGold))
                                    ])
                              ])),
                      const CountryStories(),
                      const SearchTextField(),
                      Row(children: [
                        Text("Nearby ", style: Gold_Poppins_16_Thin()),
                        Text("Attractions", style: Black_Poppins_16_Bold()),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text("More", style: Black_Poppins_16_Bold()))
                      ]),
                      GridView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: .75, crossAxisCount: 3),
                          children: const [
                            NearByAttractionSquare(
                              city: "New Delhi",
                              placeName: "India Gate",
                              imageUrlSquare:
                                  "https://images.unsplash.com/photo-1585828068970-7b75082485cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWElMjBnYXRlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                            ),
                            NearByAttractionSquare(
                              city: "New Delhi",
                              placeName: "Jantar Mantar",
                              imageUrlSquare:
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Jantar_Mantar%2C_New_Delhi_%28Misra_Yantra%29.jpg/2880px-Jantar_Mantar%2C_New_Delhi_%28Misra_Yantra%29.jpg",
                            ),
                            NearByAttractionSquare(
                              city: "New Delhi",
                              placeName: "Kutub Minar",
                              imageUrlSquare:
                                  "https://images.unsplash.com/photo-1545231499-c7bbd0d06945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGt1dHViJTIwbWluYXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                            ),
                            NearByAttractionSquare(
                              city: "New Delhi",
                              placeName: "Lotus Temple",
                              imageUrlSquare:
                                  "https://images.unsplash.com/photo-1582450724147-0ee17201a14c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bG90dXMlMjB0ZW1wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                            ),
                            NearByAttractionSquare(
                              city: "New Delhi",
                              placeName: "Jama Masjid",
                              imageUrlSquare:
                                  "https://images.unsplash.com/photo-1637301625903-e25a30ba1bb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8amphbWElMjBtYXNqaWR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                            ),
                            NearByAttractionSquare(
                                city: "New Delhi",
                                placeName: "Akshardham Temple",
                                imageUrlSquare:
                                    "https://upload.wikimedia.org/wikipedia/commons/c/c2/New_Delhi_Temple.jpg")
                          ])
                    ])))));
  }
}
