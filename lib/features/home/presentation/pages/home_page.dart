import 'package:flutter/material.dart';

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
          child: Text('Vista HOME'),
        ),
      ),
    );
  }
}
