import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
   Categories({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> categories = [
    {'name': 'Burger', 'image': 'https://example.com/burger.jpg'},
    {'name': 'Pizza', 'image': 'https://example.com/pizza.jpg'},
    {'name': 'Chicken', 'image': 'https://example.com/chicken.jpg'},
    {'name': 'Sandwich', 'image': 'https://example.com/sandwich.jpg'},
    {'name': 'Salad', 'image': 'https://example.com/salad.jpg'},
    {'name': 'Drink', 'image': 'https://example.com/drink.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            'Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories.map((category) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(category['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      category['name'],
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
