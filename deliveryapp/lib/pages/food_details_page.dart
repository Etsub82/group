import 'package:flutter/material.dart';
import 'package:deliveryapp/models/cart.dart';
import 'package:deliveryapp/models/food.dart';

class FoodDetailPage extends StatelessWidget {
  final Food food;
  final Cart cart;

  const FoodDetailPage({Key? key, required this.food, required this.cart, required void Function(Food foodItem) addItemToItemsAdded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(food.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    food.imageUrl,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.name,
                          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Price: \$${food.price.toStringAsFixed(2)}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Description: ${food.description}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(

                  onPressed: () {
                    cart.addItem(food.name, food.price);
                    Navigator.pop(context);
                  },
                  child: const Text('Add to Cart'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement buy functionality
                  },
                  child: const Text('Buy'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
