import 'package:flutter/material.dart';

class HkCircularIcon extends StatelessWidget {
  const HkCircularIcon({
    super.key,
    required this.icon,
    this.size = 24,
    this.backgroundColor,
    this.onPressed,
    this.height,
    this.width,
    this.color,
  });

  final double? width, height, size;
  final IconData? icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Center(
          child: Icon(icon, color: color, size: size),
        ),
      ),
    );
  }
}
