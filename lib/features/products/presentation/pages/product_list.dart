import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista Lista Productos'),
      ),
      body: Container(
        child: Center(
          child: Text('Vista Lista Productos'),
        ),
      ),
    );
  }
}
