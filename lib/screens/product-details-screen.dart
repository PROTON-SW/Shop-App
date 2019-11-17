import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = 'product-details-screen';
  final PreferredSizeWidget appBar;

  const ProductDetailsScreen({
    Key key,
    this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Text('Product details!'),
      ),
    );
  }
}
