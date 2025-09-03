import 'package:flutter/material.dart';


import 'common/circular_icon.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HkCircularIcon(
          icon: Icons.arrow_back_ios_new,
          width: 40,
          height: 40,
          backgroundColor: Colors.grey.shade300,
          color: Colors.black,
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Image.asset("assets/images/twoline.png"),
        ),
      ],
    );
  }

  // AppBar এর Height কন্ট্রোল করতে হবে
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
