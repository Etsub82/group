class Food {
  final String name;
  final String restaurantName;
  final double price;
  final String imageUrl;
  final String description;
  bool isFavorite; // Add this line

  Food({
    required this.name,
    required this.restaurantName,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.isFavorite = false, // Set a default value
  });
}





final Map<String, List<Food>> restaurantFoodItems = {
  'Pizza Place': [
    Food(name: 'Margherita Pizza', restaurantName: 'Pizza Place', price: 10.99, imageUrl: 'https://via.placeholder.com/100',description: 'Classic pizza topped with tomato sauce, mozzarella cheese, and fresh basil leaves.',),
    Food(name: 'Pepperoni Pizza', restaurantName: 'Pizza Place', price: 11.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'BBQ Chicken Pizza', restaurantName: 'Pizza Place', price: 12.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Hawaiian Pizza', restaurantName: 'Pizza Place', price: 11.49, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
    Food(name: 'Veggie Pizza', restaurantName: 'Pizza Place', price: 9.99, imageUrl: 'https://via.placeholder.com/100',description: 'Traditional pizza topped with pepperoni slices and melted mozzarella cheese.',),
  ],
  'Burger Joint': [
    Food(name: 'Classic Burger', restaurantName: 'Burger Joint', price: 8.99, imageUrl: 'https://via.placeholder.com/100',description: 'A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup on a sesame seed bun.',),
    Food(name: 'Cheeseburger', restaurantName: 'Burger Joint', price: 9.49, imageUrl: 'https://via.placeholder.com/100',description: 'A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup on a sesame seed bun.',),
    Food(name: 'Bacon Burger', restaurantName: 'Burger Joint', price: 9.99, imageUrl: 'https://via.placeholder.com/100',description: 'A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup on a sesame seed bun.',),
    Food(name: 'Mushroom Burger', restaurantName: 'Burger Joint', price: 9.49, imageUrl: 'https://via.placeholder.com/100',description: 'A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup on a sesame seed bun.',),
    Food(name: 'Veggie Burger', restaurantName: 'Burger Joint', price: 8.99, imageUrl: 'https://via.placeholder.com/100',description: 'A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup on a sesame seed bun.',),
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