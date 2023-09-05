import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String idProduct;
  const ProductDetailPage({super.key, required this.idProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista Producto Detalle'),
      ),
      body: Container(
        child: Center(
          child: Text('Vista Producto Detalle: $idProduct'),
        ),
      ),
    );
  }
}
