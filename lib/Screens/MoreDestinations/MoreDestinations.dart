import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:segway/Screens/CountryDetailPage/CountrypageWidgets.dart';

import '../../constants.dart';
import '../HomeScreen/HomeScreenWidgets.dart';
import '../LocationDetail/LocationDetail.dart';
import '../LocationDetail/LocationWidgets.dart';

class MoreDestinations extends StatefulWidget {
  const MoreDestinations({Key? key}) : super(key: key);

  @override
  State<MoreDestinations> createState() => _MoreDestinationsState();
}

class _MoreDestinationsState extends State<MoreDestinations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GoBackButton(),
        title: Text("Destinations",
            style: TextStyle(
                fontSize: 46.sp,
                fontFamily: 'Ellie-Script',
                color: PrimaryGold)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [FilterButton()],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: GridView(
          // physics: const NeverScrollableScrollPhysics(),
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
      ),
    );
  }
}
