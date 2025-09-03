import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_app_ui/screen/details_screen.dart';

import '../model/Model.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.builder(
        crossAxisSpacing: 20,
        itemCount: foodShopItems().length,
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          var item = foodShopItems()[index];
          return Padding(
            padding: EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(item: item),
                  ),
                );
              },
              child: Container(
                height: item.height.toDouble(),
                decoration: BoxDecoration(
                  color: item.color.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.title, style: TextStyle(fontSize: 16)),
                      Text(item.lb, style: TextStyle(fontSize: 14)),
                      Text("\$${item.price}", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: Hero(
                          tag: item.imageUrl,
                          child: Image.asset(
                            "assets/${item.imageUrl}",
                            height: 120,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: Container(
                          height: 41,
                          width: 52,
                          decoration: BoxDecoration(
                            color: item.myItems == true
                                ? item.color
                                : Colors.transparent,
                            border: Border(
                              top: BorderSide(width: 2, color: item.color),
                              left: BorderSide(width: 2, color: item.color),
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              topLeft: Radius.circular(25),
                            ),
                          ),
                          child: Icon(
                            item.myItems == true
                                ? Icons.check_sharp
                                : Icons.add,
                            color: item.myItems == true
                                ? Colors.white
                                : item.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
