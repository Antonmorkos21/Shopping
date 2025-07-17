import 'package:flutter/material.dart';

// Renamed from 'Card' to 'ProductCard' to avoid conflicts
class ProductCard extends StatelessWidget {
  final Image image;
  final Text text;
  final Text price;

  const ProductCard({
    super.key,
    required this.image,
    required this.text,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      // Adding some decoration for better visual representation of a card
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align content to the start
        children: [
          // Image section
          ClipRRect(
            // Clip the image to match the card's border radius
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8.0),
            ),
            child: image, // Directly use the passed Image widget
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text, // Directly use the passed Text widget for the name/description
                const SizedBox(height: 4.0), // Add some spacing
                price, // Directly use the passed Text widget for the price
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Example of how to use your ProductCard in a main application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Product Card Example')),
        backgroundColor:
            Colors
                .blue[100], // Changed background for better visibility of the card
        body: Center(
          child: ProductCard(
            image: Image.network(
              'https://via.placeholder.com/150', // Replace with your image URL
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            text: const Text(
              'Stylish T-Shirt',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            price: const Text(
              '\$29.99',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
