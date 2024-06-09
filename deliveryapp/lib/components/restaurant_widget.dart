import 'package:deliveryapp/models/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:deliveryapp/models/restaurant.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;
  final void Function(Food food) onToggleFavorite;
  final VoidCallback onViewDetails;

  const RestaurantWidget({
    Key? key,
    required this.restaurant,
    required this.onToggleFavorite,
    required this.onViewDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: InkWell(
        onTap: onViewDetails,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Image.network(
                restaurant.imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(restaurant.location),
                    const SizedBox(height: 5),
                    Text('Delivery Fee: \$${restaurant.deliveryFee.toStringAsFixed(2)}'),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(CupertinoIcons.star_fill, color: Colors.amber, size: 20),
                        const SizedBox(width: 5),
                        Text(restaurant.rating.toString(), style: const TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
