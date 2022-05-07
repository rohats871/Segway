import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:segway/Screens/SettingsPage/SettingsPage.dart';

import '../../constants.dart';

class UsernameAndDetailColumn extends StatelessWidget {
  const UsernameAndDetailColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Luis G Petal", style: Black_Poppins_18_Bold()),
        Text("@Luisgpetal7203", style: Black_Poppins_12_Meduim()),
        FittedBox(
          child: Row(
            children: [
              Icon(CupertinoIcons.clock, color: Colors.black, size: 12.sp),
              const Text(" Joined August 2022")
            ],
          ),
        )
      ],
    );
  }
}

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "user",
      child: Container(
        height: 80.h,
        width: 80.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1517265446290-91e599dc3b8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dHJhdmVsbGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")),
        ),
      ),
    );
  }
}

class EditInfoButton extends StatelessWidget {
  const EditInfoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 103.w,
      height: 24.h,
      decoration: BoxDecoration(
        color: SecondaryGold,
        border: Border.all(color: GoldStroke, width: 1.2.sp),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: InkWell(
          onTap: () {
            Get.to(SettingsPage());
          },
          child: Text("Edit info",
              textAlign: TextAlign.center, style: Black_Poppins_12_Meduim()),
        ),
      ),
    );
  }
}

class Trophy extends StatelessWidget {
  const Trophy({
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image(
          image: AssetImage("images/Award.png"), height: 104.h, width: 103.w),
    );
  }
}
