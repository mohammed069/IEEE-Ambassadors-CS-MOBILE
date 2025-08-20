import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.orange,
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: Center(
        child: Text(
          "Your cart is empty",
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    );
  }
}
