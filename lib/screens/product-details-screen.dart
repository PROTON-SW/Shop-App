import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products-provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = 'product-details-screen';

  @override
  Widget build(BuildContext context) {
    final String productId =
        ModalRoute.of(context).settings.arguments as String;
    final product = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);

    final PreferredSizeWidget appBar = Platform.isIOS
        ? CupertinoNavigationBar(
            middle: Text(product.title),
          )
        : AppBar(
            title: Text(product.title),
          );
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Text(product.description),
      ),
    );
  }
}
