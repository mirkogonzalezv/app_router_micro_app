import 'package:app_router_flutter/features/cart/presentation/pages/cart_page.dart';
import 'package:app_router_flutter/features/home/presentation/pages/home_page.dart';
import 'package:app_router_flutter/features/products/presentation/pages/product_detail_page.dart';
import 'package:app_router_flutter/features/products/presentation/pages/product_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/cart',
      name: 'cart',
      builder: (context, state) => CartPage(),
    ),
    GoRoute(
      path: '/products-list',
      name: 'products-list',
      builder: (context, state) => ProductListPage(),
      routes: [
        GoRoute(
          path: 'detail/:id/:first_category',
          builder: (context, GoRouterState state) {
            final idProduct = state.pathParameters['id'];
            final firstCategory = state.pathParameters['first_category'];
            return ProductDetailPage(
              idProduct: idProduct!,
              firstCategory: firstCategory!,
            );
          },
        )
      ],
    ),
  ],
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
