class Cart {
  final Map<String, CartItem> _items = {};

  void addItem(String itemName, double price) {
    if (_items.containsKey(itemName)) {
      _items[itemName]!.quantity++;
    } else {
      _items[itemName] = CartItem(name: itemName, price: price, quantity: 1);
    }
  }

  void removeItem(String itemName) {
    if (_items.containsKey(itemName)) {
      _items[itemName]!.quantity--;
      if (_items[itemName]!.quantity <= 0) {
        _items.remove(itemName);
      }
    }
  }

  void clearCart() {
    _items.clear();
  }

  double getTotalPrice() {
    return _items.values.fold(0, (sum, item) => sum + item.price * item.quantity);
  }

  int getItemCount(String itemName) {
    return _items.containsKey(itemName) ? _items[itemName]!.quantity : 0;
  }

  double getPrice(String itemName) {
    return _items.containsKey(itemName) ? _items[itemName]!.price : 0.0;
  }

  double get totalAmount => getTotalPrice();

  Map<String, int> get items => _items.map((key, value) => MapEntry(key, value.quantity));

  List<CartItem> getItems() {
    return _items.values.toList();
  }
}

class CartItem {
  final String name;
  final double price;
  int quantity;

  CartItem({required this.name, required this.price, this.quantity = 0});
}
