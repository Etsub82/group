import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:deliveryapp/components/catagories.dart';
import 'package:deliveryapp/components/mydrawer.dart';
import 'package:deliveryapp/components/searchbar.dart';
import 'package:deliveryapp/components/restaurant_widget.dart';
import 'package:deliveryapp/models/restaurant.dart';
import 'package:deliveryapp/models/cart.dart';
import 'package:deliveryapp/pages/cart_page.dart';


import '../models/food.dart';
import 'restaurant_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Restaurant> restaurants = [
    Restaurant(
      name: 'Pizza Place',
      location: '123 Main St',
      deliveryFee: 2.99,
      rating: 4.5,
      imageUrl: 'lib/images/pizzaplace.jfif',
    ),
    Restaurant(
      name: 'Burger Joint',
      location: '456 Elm St',
      deliveryFee: 1.99,
      rating: 4.0,
      imageUrl: 'lib/images/Burger King.jfif',
    ),
    Restaurant(
      name: 'Sushi World',
      location: '789 Oak St',
      deliveryFee: 3.49,
      rating: 4.8,
      imageUrl: 'lib/images/SushiHouse.jfif',
    ),
    Restaurant(
      name: 'Taco Town',
      location: '101 Maple Ave',
      deliveryFee: 2.49,
      rating: 4.3,
      imageUrl: 'lib/images/TacoHouse.jfif',
    ),
    Restaurant(
      name: 'Pasta Paradise',
      location: '202 Birch Rd',
      deliveryFee: 3.99,
      rating: 4.6,
      imageUrl: 'lib/images/PastaHouse.jfif',
    ),
    Restaurant(
      name: 'Salad Stop',
      location: '303 Cedar Blvd',
      deliveryFee: 1.99,
      rating: 4.2,
      imageUrl: 'lib/images/SaladHouse.png',
    ),
  ];

  int _currentIndex = 0;
  final Cart _cart = Cart(); // Instance of Cart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor:const Color.fromRGBO(255, 193, 7, 1),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage(cart: _cart)),
              );
            },
            icon: const Icon(CupertinoIcons.cart),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const SearchBars(),
                    Categories(),
                    const Text(
                      'Restaurants',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: ListView.builder(
                        itemCount: restaurants.length,
                        itemBuilder: (context, index) {
                          return RestaurantWidget(
                            restaurant: restaurants[index],
                            onToggleFavorite: (Food food) {},
                            onViewDetails: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RestaurantDetailsPage(
                                    restaurant: restaurants[index],
                                    cart: _cart,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
