import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [],
  errorPageBuilder: (context, state) {
    return MaterialPage(
      child: Scaffold(
        body: Container(
          child: Text('Error pagina no encontrada'),
        ),
      ),
    );
  },
);
