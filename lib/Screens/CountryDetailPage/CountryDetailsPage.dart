import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:segway/constants.dart';

import '../HomeScreen/HomeScreenWidgets.dart';
import '../LocationDetail/LocationDetail.dart';
import 'CountrypageWidgets.dart';

class CountryInformationPage extends StatefulWidget {
  const CountryInformationPage({Key? key}) : super(key: key);

  @override
  State<CountryInformationPage> createState() => _CountryInformationPageState();
}

class _CountryInformationPageState extends State<CountryInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Peru",
            style: TextStyle(
                fontSize: 46.sp,
                fontFamily: 'Ellie-Script',
                color: PrimaryGold)),
        leading: const GoBackButton(),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Map(),
              const IconsandButtons(),
              SizedBox(height: 6.h),
              const PlaceData(
                data:
                    "Peru is a country in South America that's home to a section of Amazon rainforest and Machu Picchu, an ancient Incan city high in the Andes mountains. The region around Machu Picchu, including the Sacred Valley, Inca Trail and colonial city of Cusco, is rich in archaeological sites. On Peru’s arid Pacific coast is Lima, the capital, with a preserved colonial center and important collections of pre-Columbian art.",
              ),
              SizedBox(height: 6.h),
              const MoreDestinationsWidget(),
              SizedBox(height: 6.h),
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
              const GoldAndBlackText(
                goldText: "Things You Should",
                blackText: "Know About",
              ),
              const DataTextTable(
                text1: "Capital",
                text2: "Lima",
              ),
              const DataTextTable(
                text1: "Language",
                text2: "Spanish",
              ),
              const DataTextTable(
                text1: "Currency",
                text2: "Sol",
              ),
              const DataTextTable(
                text1: "Visa Requirements",
                text2: "No visa is required for a stay of up to 183 days",
              ),
              const DataTextTable(
                text1: "Best time to visit",
                text2: "between May and October",
              ),
              const DataTextTable(
                text1: "Weather Type",
                text2: "Mostly Cold",
              ),
              const DataTextTable(
                text1: "Must Try Dishes",
                text2:
                    "Causa, Ceviche,Lomo Saltado, Aji de Gallina, Papas a la Huancaina, Cuy, Anticuchos de Corazón, Arroz con Pato, Pollo a la Brasa.",
              ),
              const GoldAndBlackText(
                goldText: "Plan your",
                blackText: "Trip",
              ),
              Container(
                child: Text(
                  "Day 1: Arrive in Lima.\nDay 2: Sacsayhuaman ruins.\nDay 3: Pisac and Ollantaytambo in the Sacred Valley.Days 4 & 5: Machu Picchu.\nDay 6: Cusco.\nDay 7: Cusco to Puno.\nDay 8: Islands of Lake Titicaca.\nDays 9 & 10: Visit Lima.\n",
                  style: Black_Poppins_16_Bold(),
                ),
              ),
              const GoldAndBlackText(
                goldText: "Expenses",
                blackText: "(Approximately in Dollars)",
              ),
              const DataTextTable(
                text1: "Solo",
                text2: "1000-1200",
              ),
              const DataTextTable(
                text1: "Couple",
                text2: "2000-2200",
              ),
              const DataTextTable(
                text1: "Group(5 People)",
                text2: "5000-12000",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
