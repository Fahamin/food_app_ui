import 'package:flutter/material.dart';
import 'package:food_app_ui/wigets/appbar.dart';

import '../model/Model.dart';
import '../wigets/bottom_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: item.bgColor,
      body: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 25,
                top: 50,
              ),
              child: CustomAppbar(),
            ),
            Center(
              child: SizedBox(
                height: 300,
                child: Hero(
                  tag: item.imageUrl,
                  child: Image.asset("assets/${item.imageUrl}"),
                ),
              ),
            ),

            BottomCard(item: item),
          ],
        ),
      ),
    );
  }
}
