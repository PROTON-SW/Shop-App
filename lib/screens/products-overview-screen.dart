import 'package:flutter/material.dart';
import 'package:shop_app/widgets/products-grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static const routeName = 'products-overview';
  final PreferredSizeWidget appBar;

  const ProductsOverviewScreen({
    Key key,
    @required this.appBar,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ProductGrid(),
      ),
    );
  }
}

