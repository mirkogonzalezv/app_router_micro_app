import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista Home'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Vista HOME'),
              ElevatedButton(
                onPressed: () {
                  context.push('/products-list');
                },
                child: Text('Ir a lista de productos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
