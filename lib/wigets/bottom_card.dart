import 'package:flutter/material.dart';

import '../model/Model.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                ),
              ),
              Text(
                item.lb,
                style: const TextStyle(color: Colors.black45, fontSize: 18),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                        ),
                        child: const Icon(Icons.remove),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(color: Colors.grey[100]),
                        child: const Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  Text(
                    "\$${item.price}",
                    style: const TextStyle(color: Colors.black, fontSize: 35),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        "Product Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        item.description,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 22),
              Row(
                children: [
                  Container(
                    height: 75,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: item.color),
                    ),
                    child: Icon(Icons.favorite, size: 45, color: item.color),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 75,
                      decoration: BoxDecoration(
                        color: item.color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}