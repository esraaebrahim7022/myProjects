import 'package:flutter/material.dart';
import 'package:storeapp/screens/homePage.dart';
import 'package:storeapp/screens/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductsPage.id: (context) => UpdateProductsPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
