import 'package:flutter/material.dart';
import 'package:deliveryapp/models/cart.dart';


class CheckoutPage extends StatelessWidget {
  final Cart cart;

  const CheckoutPage({Key? key, required this.cart}) : super(key: key);

  void placeOrder(BuildContext context) {
    // Implement logic for placing the order
    // You can clear the cart after placing the order, for example:
    // cart.clear();

    // Show a dialog or navigate to a new page to display order confirmation.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Order Placed'),
          content: Text('Your order has been placed successfully!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.of(context).pop(); // Go back to the previous page
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Items in Cart',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cart.getItems().length,
              itemBuilder: (context, index) {
                final item = cart.getItems()[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('Price: \$${item.price}'),
                  trailing: Text('Quantity: ${item.quantity}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Add any additional description or notes here...'),
                SizedBox(height: 20),
                Text(
                  'Total Price: \$${cart.getTotalPrice()}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: cart.getItems().isNotEmpty ? () => placeOrder(context) : null,
              child: Text('Place Order'),
            ),
          ),
        ],
      ),
    );
  }
}
