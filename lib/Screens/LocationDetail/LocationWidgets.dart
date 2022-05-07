import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:segway/constants.dart';

class BuyTicketsButton extends StatelessWidget {
  const BuyTicketsButton({
    this.onTap,
    Key? key,
  }) : super(key: key);
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: PrimaryGold,
      borderRadius: BorderRadius.circular(10.sp),
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 5.sp),
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: SecondaryGold,
              borderRadius: BorderRadius.circular(10.sp),
              border: Border.all(color: GoldStroke, width: 1.5.sp)),
          child: Center(
              child: Text("Buy Tickets", style: Black_Poppins_12_Meduim()))),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.filter_alt_outlined, color: PrimaryGold, size: 26.sp),
      onPressed: () {},
    );
  }
}

class LocationImage extends StatelessWidget {
  const LocationImage({
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
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1415804941191-bc0c3bbac10d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVydXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
              fit: BoxFit.fitWidth)),
    );
  }
}
