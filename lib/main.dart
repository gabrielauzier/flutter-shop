import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/core/app_colors.dart';
import 'package:shop/core/app_routes.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/products_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ThemeData theme = ThemeData(fontFamily: 'Lato');

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: AppColors.primary,
            secondary: AppColors.secondary,
          ),
        ),
        home: ProductsOverviewPage(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
