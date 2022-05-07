import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:segway/Screens/HomeScreen/HomeScreenWidgets.dart';
import 'package:segway/Screens/LocationDetail/LocationDetail.dart';

import '../../constants.dart';

class BucketList extends StatefulWidget {
  const BucketList({Key? key}) : super(key: key);

  @override
  State<BucketList> createState() => _BucketListState();
}

class _BucketListState extends State<BucketList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: Icon(Icons.search, color: Colors.black, size: 30.sp),
            title: Text("BucketList", style: HeadingEllieScript()),
            actions: [
              GestureDetector(
                  child: Padding(
                      padding: EdgeInsets.all(16.sp),
                      child:
                          const Icon(Icons.filter_list, color: Colors.black)),
                  onTap: () {
                    Navigator.pop(context);
                  })
            ]),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.sp),
            child: GridView(
              // physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.8, crossAxisCount: 3),
              children: [
                const NearByAttractionSquare(
                  city: "New Delhi",
                  placeName: "India Gate",
                  imageUrlSquare:
                      "https://images.unsplash.com/photo-1585828068970-7b75082485cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWElMjBnYXRlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                ),
                const NearByAttractionSquare(
                  city: "New Delhi",
                  placeName: "Jantar Mantar",
                  imageUrlSquare:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Jantar_Mantar%2C_New_Delhi_%28Misra_Yantra%29.jpg/2880px-Jantar_Mantar%2C_New_Delhi_%28Misra_Yantra%29.jpg",
                ),
                const NearByAttractionSquare(
                  city: "New Delhi",
                  placeName: "Kutub Minar",
                  imageUrlSquare:
                      "https://images.unsplash.com/photo-1545231499-c7bbd0d06945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGt1dHViJTIwbWluYXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                ),
                const NearByAttractionSquare(
                  city: "New Delhi",
                  placeName: "Lotus Temple",
                  imageUrlSquare:
                      "https://images.unsplash.com/photo-1582450724147-0ee17201a14c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bG90dXMlMjB0ZW1wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                ),
                const NearByAttractionSquare(
                  city: "New Delhi",
                  placeName: "Jama Masjid",
                  imageUrlSquare:
                      "https://images.unsplash.com/photo-1637301625903-e25a30ba1bb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8amphbWElMjBtYXNqaWR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                ),
                const NearByAttractionSquare(
                    city: "New Delhi",
                    placeName: "Akshardham Temple",
                    imageUrlSquare:
                        "https://upload.wikimedia.org/wikipedia/commons/c/c2/New_Delhi_Temple.jpg"),
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
              ],
            ),
          ),
        ));
    ;
  }
}
