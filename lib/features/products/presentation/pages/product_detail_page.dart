// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String idProduct;
  final String firstCategory;
  const ProductDetailPage({
    Key? key,
    required this.idProduct,
    required this.firstCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista Producto Detalle'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text('Vista Producto Detalle: $idProduct'),
              Text('Primera categoria: $firstCategory')
            ],
          ),
        ),
      ),
    );
  }
}
