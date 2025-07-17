import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  final PageController _pageController = PageController();
  final List<String> featuredImages = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
  ];

  final List<Map<String, String>> products = [
    {'image': 'assets/images/1.jpg', 'title': 'Tablet'},
    {'image': 'assets/images/2.jpg', 'title': 'Laptop'},
    {'image': 'assets/images/3.jpg', 'title': 'PC'},
    {'image': 'assets/images/1.jpg', 'title': 'Phone'},
  ];

  final List<Map<String, String>> hotOffers = [
    {'image': 'assets/images/offer1.jpg', 'description': '50% off on Tablets!'},
    {
      'image': 'assets/images/offer2.jpg',
      'description': 'New laptops available.',
    },
    {'image': 'assets/images/offer3.jpg', 'description': 'Discounts on PCs.'},
    {
      'image': 'assets/images/offer4.jpg',
      'description': 'Best phones of 2025.',
    },
    {'image': 'assets/images/offer5.jpg', 'description': 'Accessories sale.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Our Products'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PageView for featured products
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: _pageController,
                itemCount: featuredImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        featuredImages[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Products',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            // GridView for product cards
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 per row
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          products[index]['image']!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(products[index]['title']!),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_shopping_cart),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Item added to the cart"),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Hot Offers',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            // ListView.builder for Hot Offers
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: hotOffers.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        hotOffers[index]['image']!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          hotOffers[index]['description']!,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
