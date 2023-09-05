import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista Carrito'),
      ),
      body: Container(
        child: Center(
          child: Text('Vista Carrito'),
        ),
      ),
    );
  }
}
