import 'package:flutter/material.dart';

import 'features/products/presentation/pages/product_detail_page.dart';

class ProductDetailMicroapp extends StatelessWidget {
  final String idProduct;
  final String firstCategory;
  const ProductDetailMicroapp({
    super.key,
    required this.idProduct,
    required this.firstCategory,
  });

  @override
  Widget build(BuildContext context) {
    return ProductDetailPage(
      idProduct: idProduct,
      firstCategory: firstCategory,
    );
  }
}