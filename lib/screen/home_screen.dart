import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_app_ui/model/Model.dart';

import '../wigets/appbar.dart';
import '../wigets/card_item.dart';
import '../wigets/common/product_title.dart';
import '../wigets/common/search_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(),
              SizedBox(height: 20),
              HkProductTitleText(title: "Fries and Vegetables"),
              SizedBox(height: 20),
              HkSearchContainer(text: 'Search', color: Colors.grey.shade200),
              CardItem(),
            ],
          ),
        ),
      ),
    );
  }
}


