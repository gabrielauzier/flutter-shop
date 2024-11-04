import 'package:flutter/material.dart';
import 'package:shop/components/product_grid.dart';
import 'package:shop/core/app_colors.dart';

class ProductsOverviewPage extends StatelessWidget {
  ProductsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha loja'),
        backgroundColor: AppColors.primary,
      ),
      body: ProductGrid(),
    );
  }
}
