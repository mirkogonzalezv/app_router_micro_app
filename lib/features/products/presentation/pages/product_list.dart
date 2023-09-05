import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<Map<String, dynamic>> listaProductos = [
  {
    'id': 1,
    'name': 'Producto 1',
    'sku': '345123332',
    'main_category': 1,
    'second_category': 2,
    'thirt_category': 3
  },
  {
    'id': 2,
    'name': 'Producto 2',
    'sku': '3451456456',
    'main_category': 1,
    'second_category': 2,
    'thirt_category': 3
  },
  {
    'id': 3,
    'name': 'Producto 3',
    'sku': '12324534',
    'main_category': 2,
    'second_category': 5,
    'thirt_category': 9
  },
  {
    'id': 4,
    'name': 'Producto 4',
    'sku': '1234552342',
    'main_category': 2,
    'second_category': 5,
    'thirt_category': 8
  }
];

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista Lista Productos'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Column(
              children: [
                Text('Primera categoria: 1'),
                Text('Primera categoria: 2'),
                Text('Primera categoria: 3')
              ],
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.15,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                padding: EdgeInsets.all(20),
                itemCount: listaProductos.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black, style: BorderStyle.solid),
                    ),
                    child: Column(
                      children: [
                        Text('SKU: ${listaProductos[index]['sku']}'),
                        Text('SKU: ${listaProductos[index]['name']}'),
                        ElevatedButton(
                          onPressed: () {
                            log(listaProductos[index]['sku']);
                            context.go(
                                '/products-list/detail/${listaProductos[index]['sku']}/${listaProductos[index]['main_category']}');
                          },
                          child: Text('Agregar producto'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
