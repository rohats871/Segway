import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class TravelStories extends StatefulWidget {
  const TravelStories({Key? key}) : super(key: key);

  @override
  State<TravelStories> createState() => _TravelStoriesState();
}

class _TravelStoriesState extends State<TravelStories> {
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
          title: Text("Travel Stories", style: HeadingEllieScript()),
          actions: [
            GestureDetector(
                child: Padding(
                    padding: EdgeInsets.all(16.sp),
                    child: const Icon(Icons.filter_list, color: Colors.black)),
                onTap: () {
                  Navigator.pop(context);
                })
          ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("ADD", style: Black_Poppins_14()),
        icon: const Icon(Icons.add, color: Colors.black),
        backgroundColor: Secondary100,
        splashColor: GoldStroke,
        elevation: 10,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: ListView(
            children: const [
              TravelStoriesData(
                name: "Jenny",
                username: "@jennyitis",
                data:
                    "Things not to miss when in peru: A detailed List.🇵🇪 😲 👀,",
                imageData:
                    "https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Nick",
                username: "@Nickwitty212",
                data:
                    "A Bus Ride Into The Himalayas, Crazy Bus drivers and the views?",
                imageData:
                    "https://images.unsplash.com/photo-1517265446290-91e599dc3b8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dHJhdmVsbGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Raul",
                username: "@RaulOfLands",
                data:
                    "The 13 most beautiful beaches of Mexico you will fall in love with.",
                imageData:
                    "https://images.unsplash.com/photo-1507190999533-8e418e98fe24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bmlja3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Veronica",
                username: "@QueenVeronica",
                data:
                    "The Love for TajMahal, that will make you forget other things.",
                imageData:
                    "https://images.unsplash.com/photo-1638861270537-3c807f08fbd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHJ1c3NpYW4lMjB3b21lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Jenny",
                username: "@jennyitis",
                data:
                    "Things not to miss when in peru: A detailed List.🇵🇪 😲 👀,",
                imageData:
                    "https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Nick",
                username: "@Nickwitty212",
                data:
                    "A Bus Ride Into The Himalayas, Crazy Bus drivers and the views?",
                imageData:
                    "https://images.unsplash.com/photo-1517265446290-91e599dc3b8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dHJhdmVsbGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Raul",
                username: "@RaulOfLands",
                data:
                    "The 13 most beautiful beaches of Mexico you will fall in love with.",
                imageData:
                    "https://images.unsplash.com/photo-1507190999533-8e418e98fe24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bmlja3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Veronica",
                username: "@QueenVeronica",
                data:
                    "The Love for TajMahal, that will make you forget other things.",
                imageData:
                    "https://images.unsplash.com/photo-1638861270537-3c807f08fbd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHJ1c3NpYW4lMjB3b21lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Jenny",
                username: "@jennyitis",
                data:
                    "Things not to miss when in peru: A detailed List.🇵🇪 😲 👀,",
                imageData:
                    "https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Nick",
                username: "@Nickwitty212",
                data:
                    "A Bus Ride Into The Himalayas, Crazy Bus drivers and the views?",
                imageData:
                    "https://images.unsplash.com/photo-1517265446290-91e599dc3b8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dHJhdmVsbGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Raul",
                username: "@RaulOfLands",
                data:
                    "The 13 most beautiful beaches of Mexico you will fall in love with.",
                imageData:
                    "https://images.unsplash.com/photo-1507190999533-8e418e98fe24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bmlja3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
              ),
              TravelStoriesData(
                name: "Veronica",
                username: "@QueenVeronica",
                data:
                    "The Love for TajMahal, that will make you forget other things.",
                imageData:
                    "https://images.unsplash.com/photo-1638861270537-3c807f08fbd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHJ1c3NpYW4lMjB3b21lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TravelStoriesData extends StatelessWidget {
  const TravelStoriesData({
    required this.data,
    required this.name,
    required this.username,
    required this.imageData,
    Key? key,
  }) : super(key: key);
  final String name, username, data, imageData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 64.h,
              width: 64.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imageData)),
                  color: Colors.yellowAccent,
                  shape: BoxShape.circle,
                  border: Border.all(color: GoldStroke, width: 1.2.sp)),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(name, style: Black_Poppins_18_Bold()),
                      Text(username, style: Black_Poppins_18_Thin()),
                    ],
                  ),
                  Text(data, style: Black_Poppins_12_Meduim()),
                ],
              ),
            ),
          ],
        ),
        const Divider(color: GoldStroke),
      ],
    );
  }
}
