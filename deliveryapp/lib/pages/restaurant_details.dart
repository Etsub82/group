import 'package:flutter/material.dart';
import 'package:deliveryapp/models/cart.dart';
import 'package:deliveryapp/models/restaurant.dart';
import 'package:deliveryapp/models/food.dart';
import 'food_details_page.dart'; // Import the new page

class RestaurantDetailsPage extends StatefulWidget {
  final Restaurant restaurant;
  final Cart cart;

  const RestaurantDetailsPage({Key? key, required this.restaurant, required this.cart}) : super(key: key);

  @override
  _RestaurantDetailsPageState createState() => _RestaurantDetailsPageState();
}

class _RestaurantDetailsPageState extends State<RestaurantDetailsPage> {
  
final Map<String, List<Food>> restaurantFoodItems = {
  'Pizza Place': [
    Food(name: 'Margherita Pizza', restaurantName: 'Pizza Place', price: 10.99, imageUrl: 'lib/images/Pizzas/MargheritaPizza.jfif',description: 'Classic pizza topped with tomato sauce, mozzarella cheese, and fresh basil leaves.',),
    Food(name: 'Pepperoni Pizza', restaurantName: 'Pizza Place', price: 11.99, imageUrl: 'lib/images/Pizzas/PepperoniPizza.jfif',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'BBQ Chicken Pizza', restaurantName: 'Pizza Place', price: 12.99, imageUrl: 'lib/images/Pizzas/BBQ Chicken Pizza.jfif',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Hawaiian Pizza', restaurantName: 'Pizza Place', price: 11.49, imageUrl: 'lib/images/Pizzas/Hawaiian Pizza.jfif',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Veggie Pizza', restaurantName: 'Pizza Place', price: 9.99, imageUrl: 'lib/images/Pizzas/Veggie Pizza.jfif',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
  ],
  'Burger Joint': [
    Food(name: 'Classic Burger', restaurantName: 'Burger Joint', price: 8.99, imageUrl: 'lib/images/Burgers/ClassicBurger.jfif',description: 'A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup on a sesame seed bun.',),
    Food(name: 'Cheeseburger', restaurantName: 'Burger Joint', price: 9.49, imageUrl: 'lib/images/Burgers/CheeseBurger.jfif',description: 'A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup on a sesame seed bun.',),
    Food(name: 'Bacon Burger', restaurantName: 'Burger Joint', price: 9.99, imageUrl: 'lib/images/Burgers/BBQ Bacon Burger.jfif',description: 'A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup on a sesame seed bun.',),
    Food(name: 'Mushroom Burger', restaurantName: 'Burger Joint', price: 9.49, imageUrl: 'lib/images/Burgers/MushroomBurger.jfif',description: 'A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup on a sesame seed bun.',),
    Food(name: 'Veggie Burger', restaurantName: 'Burger Joint', price: 8.99, imageUrl: 'lib/images/Burgers/VeggieBurger.jfif',description: 'A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup on a sesame seed bun.',),
  ],
  'Sushi World': [
    Food(name: 'California Roll', restaurantName: 'Sushi World', price: 7.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Spicy Tuna Roll', restaurantName: 'Sushi World', price: 8.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Salmon Sashimi', restaurantName: 'Sushi World', price: 9.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Eel Roll', restaurantName: 'Sushi World', price: 8.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Avocado Roll', restaurantName: 'Sushi World', price: 6.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
  ],
  'Taco Town': [
    Food(name: 'Beef Taco', restaurantName: 'Taco Town', price: 3.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Chicken Taco', restaurantName: 'Taco Town', price: 3.49, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Fish Taco', restaurantName: 'Taco Town', price: 4.49, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Shrimp Taco', restaurantName: 'Taco Town', price: 4.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Veggie Taco', restaurantName: 'Taco Town', price: 3.49, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
  ],
  'Pasta Paradise': [
    Food(name: 'Spaghetti Bolognese', restaurantName: 'Pasta Paradise', price: 10.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Penne Alfredo', restaurantName: 'Pasta Paradise', price: 11.49, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Lasagna', restaurantName: 'Pasta Paradise', price: 12.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Ravioli', restaurantName: 'Pasta Paradise', price: 11.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Carbonara', restaurantName: 'Pasta Paradise', price: 12.49, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
  ],
};

  List<Food> itemsAdded = [];

  void addItemToItemsAdded(Food foodItem) {
    setState(() {
      itemsAdded.add(foodItem);
    });
  }

  int getTotalItems() {
    return widget.cart.getItems().fold(0, (sum, item) => sum + item.quantity);
  }

  @override
  Widget build(BuildContext context) {
    final foodItems = restaurantFoodItems[widget.restaurant.name] ?? [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(widget.restaurant.name),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text(
                'Items: ${getTotalItems()} - \$${widget.cart.getTotalPrice().toStringAsFixed(2)}',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.restaurant.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Menu',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: foodItems.length,
                    itemBuilder: (context, index) {
                      final foodItem = foodItems[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Navigate to food detail page
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FoodDetailPage(
                                        food: foodItem,
                                        cart: widget.cart,
                                        addItemToItemsAdded: addItemToItemsAdded, // Pass the callback function
                                      ),
                                    ),
                                  );
                                },
                                child: Image.network(
                                  foodItem.imageUrl,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      foodItem.name,
                                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    Text(foodItem.restaurantName),
                                    Text('\$${foodItem.price.toStringAsFixed(2)}'),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              widget.cart.addItem(foodItem.name, foodItem.price);
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:Color.fromARGB(255, 255, 105, 97), // Change button color
                                          ),
                                          child: const Text(
                                            'Add to Cart',
                                            style: TextStyle(color: Colors.amber ),
                                            ),
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(Icons.remove),
                                              onPressed: () {
                                                setState(() {
                                                  widget.cart.removeItem(foodItem.name);
                                                });
                                              },
                                            ),
                                            Text(
                                              '${widget.cart.getItemCount(foodItem.name)}',
                                              style: const TextStyle(fontSize: 16),
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.add),
                                              onPressed: () {
                                                setState(() {
                                                  widget.cart.addItem(foodItem.name, foodItem.price);
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            foodItem.isFavorite ? Icons.favorite : Icons.favorite_border,
                                            color: foodItem.isFavorite ? Colors.red : Colors.grey,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              foodItem.isFavorite = !foodItem.isFavorite;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
