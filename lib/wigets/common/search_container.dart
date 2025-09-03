import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/sizes.dart';


class HkSearchContainer extends StatelessWidget {
  const HkSearchContainer({
    super.key,
    required this.text,
    this.color = HkColors.darkGrey,
    this.icon = Icons.search,
    this.showBackground = true,
    this.showBorder = false,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: HkSizes.defaultSpace),
  });

  final String text;
  final Color color; //  = HkColors.darkGrey;

  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(HkSizes.md),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(HkSizes.borderRadiusLg),
          border: showBorder ? Border.all(color: HkColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: HkColors.darkerGrey),
            const SizedBox(width: HkSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
