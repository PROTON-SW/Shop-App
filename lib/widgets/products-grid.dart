import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './product-item.dart';
import '../providers/products-provider.dart';

class ProductGrid extends StatelessWidget {
  final bool showFavorites;

  ProductGrid(this.showFavorites);
  @override
  Widget build(BuildContext context) {
    final products = showFavorites
        ? Provider.of<Products>(context).favorites
        : Provider.of<Products>(context).items;
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, i) {
        return ChangeNotifierProvider.value(
          value: products[i],
          child: ProductItem(),
        );
      },
    );
  }
}
