import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import '../CountryDetailPage/CountrypageWidgets.dart';
import 'LocationWidgets.dart';

class LocationDetail extends StatefulWidget {
  const LocationDetail({Key? key}) : super(key: key);

  @override
  State<LocationDetail> createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Machu Pichu", style: HeadingEllieScript()),
        leading: const GoBackButton(),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Hero(
              tag: "machupichu",
              child: LocationImage(),
            ),
            const IconsandButtons(),
            SizedBox(height: 6.h),
            const PlaceData(
                data:
                    "Machu Picchu is an Incan citadel set high in the Andes Mountains in Peru, above the Urubamba River valley. Built in the 15th century and later abandoned, it’s renowned for its sophisticated dry-stone walls that fuse huge blocks without the use of mortar, intriguing buildings that play on astronomical alignments and panoramic views. Its exact former use remains a mystery"),
            const GoldAndBlackText(blackText: "Information", goldText: "More"),
            const DataTextTable(text1: "Timing", text2: "6:00 AM-5:30 PM"),
            const DataTextTable(
                text1: "Best time to visit", text2: "Afternoon"),
            const DataTextTable(
                text1: "Where is it located", text2: "Cusco, Peru"),
            const DataTextTable(
                text1: "Nearest Airport",
                text2: "Jorge Chávez International Airport"),
            const DataTextTable(
                text1: "Distance and Time From Airport", text2: "1hr 30 min"),
            const DataTextTable(
                text1: "Guides available",
                text2: "yes both private and goverment"),
            const DataTextTable(
                text1: "Price for a guide (In USD)", text2: "\$40-\$50"),
            const DataTextTable(text1: "Tickets needed", text2: "Yes"),
            const DataTextTable(
                text1: "Price of tickets (In USD)", text2: "\$40-\$50"),
            BuyTicketsButton(
              onTap: () async {
                final url = "https://www.ticketmachupicchu.com/en";
                if (await canLaunch(url)) {
                  await launch(url);
                } else
                  // can't launch url, there is some error
                  throw "Could not launch $url";
              },
            ),
            const GoldAndBlackText(
                blackText: "Non-Essentials", goldText: "Essesntials &"),
            const DataTextTable(
                text1: "Bring",
                text2:
                    "Water Bottles, Rain Jackets, SPF Sunscreen, Insect Repelent, Passport."),
            const DataTextTable(
                text1: "Avoid",
                text2:
                    "Drones, umbrellas, or walking sticks or trekking poles"),
            const GoldAndBlackText(blackText: "Reach", goldText: "How To"),
            Text("Machu Pichu", style: Gold_Poppins_12_Meduim()),
            Text(
              "The best way to get from Cusco to Machu Picchu without a car is to bus and taxi which takes 4h 49m.The easiest way to get from Cusco to Machu Picchu is to take the train to Aguas Calientes. It's a scenic 3.5-hour trip each way along tracks that run right along the Urubamba River in the Sacred Valley, with dramatic canyon walls on either side. after you’ve reached,",
              style: Black_Poppins_12_Meduim(),
            ),
            SizedBox(height: 10.h),
            Text(
              "You can take a very steep 90-minute hike up to the citadel from Aguas Calientes or you can take a 30-minute bus ride. You'll need to purchase your ticket from the ticket office in Aguas Calientes, though you can do so the day of your trip. Buses operate every 15 minutes or so starting at 5:30 a.m., and people start lining up well before that. Lines to board will be long in both directions.",
              style: Black_Poppins_12_Meduim(),
            ),
          ],
        )),
      ),
    );
  }
}
