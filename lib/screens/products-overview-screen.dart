import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product-item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static const routeName = 'products-overview';
  final PreferredSizeWidget appBar;
  final List<Product> products;

  const ProductsOverviewScreen({
    Key key,
    @required this.appBar,
    @required this.products,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, i) {
            return ProductItem(products[i]);
          },
        ),
      ),
    );
  }
}
