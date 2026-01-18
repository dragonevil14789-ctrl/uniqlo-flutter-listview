import 'package:flutter/material.dart';

void main() {
  runApp(const UniqloApp());
}

class UniqloApp extends StatelessWidget {
  const UniqloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListPage(),
    );
  }
}

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

 final List<Map<String, String>> products = const [
  {'name': 'U Crew Neck T-Shirt', 'price': '฿390', 'image': 'assets/images/1.jpg'},
  {'name': 'Oxford Shirt', 'price': '฿990', 'image': 'assets/images/2.jpg'},
  {'name': 'Ultra Light Down Jacket', 'price': '฿2,990', 'image': 'assets/images/3.jpg'},
  {'name': 'AIRism T-Shirt', 'price': '฿490', 'image': 'assets/images/4.jpg'},
  {'name': 'Sweat Hoodie', 'price': '฿1,290', 'image': 'assets/images/5.jpg'},
  {'name': 'Easy Ankle Pants', 'price': '฿1,290', 'image': 'assets/images/6.jpg'},
  {'name': 'Flannel Shirt', 'price': '฿790', 'image': 'assets/images/7.jpg'},
  {'name': 'HEATTECH Innerwear', 'price': '฿590', 'image': 'assets/images/8.jpg'},
  {'name': 'BlockTech Coat', 'price': '฿3,990', 'image': 'assets/images/9.jpg'},
  {'name': 'Slim Fit Jeans', 'price': '฿1,490', 'image': 'assets/images/10.jpg'},
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'UNIQLO',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Image.asset(
                item['image']!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(
                item['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                item['price']!,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        },
      ),
    );
  }
}
