import 'package:deliveryapp/pages/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/models/cart.dart';

class CartPage extends StatefulWidget {
  final Cart cart;

  const CartPage({Key? key, required this.cart}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor:const Color.fromRGBO(255, 193, 7, 1),
      ),
      body: ListView.builder(
        itemCount: widget.cart.items.length,
        itemBuilder: (context, index) {
          final itemName = widget.cart.items.keys.elementAt(index);
          final quantity = widget.cart.items[itemName]!;

          return ListTile(
            title: Text(itemName),
            subtitle: Text('Quantity: $quantity'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      widget.cart.removeItem(itemName);
                    });
                  },
                ),
                Text(
                  '$quantity',
                  style: const TextStyle(fontSize: 16),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      widget.cart.addItem(itemName, widget.cart.getPrice(itemName));
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total: \$${widget.cart.totalAmount.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => CheckoutPage(cart: widget.cart),
  ),
);

                },
                
                child: const Text('Checkout'),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
