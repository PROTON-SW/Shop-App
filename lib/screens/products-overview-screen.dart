import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/widgets/products-grid.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  static const routeName = 'products-overview';

  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool _showFavoritesOnly = false;

  void onSelected(FilterOptions filter) {
    setState(() {
      if (filter == FilterOptions.Favorites) {
        _showFavoritesOnly = true;
      }
      if (filter == FilterOptions.All) {
        _showFavoritesOnly = false;
      }
    });
  }
  @override
  void didUpdateWidget(ProductsOverviewScreen oldWidget) {
    
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = Platform.isIOS
        ? CupertinoNavigationBar(
            middle: Text('Shop App'),
            trailing: PopupMenuButton(
              onSelected: onSelected,
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                PopupMenuItem(
                  value: FilterOptions.Favorites,
                  child: Text('Only favorites'),
                ),
                PopupMenuItem(
                  value: FilterOptions.All,
                  child: Text('Show all'),
                ),
              ],
            ),
          )
        : AppBar(
            title: Text('Shop App'),
            actions: <Widget>[
              PopupMenuButton(
                onSelected: onSelected,
                icon: Icon(Icons.more_vert),
                itemBuilder: (_) => [
                  PopupMenuItem(
                    value: FilterOptions.Favorites,
                    child: Text('Only favorites'),
                  ),
                  PopupMenuItem(
                    value: FilterOptions.All,
                    child: Text('Show all'),
                  ),
                ],
              ),
            ],
          );
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ProductGrid(_showFavoritesOnly),
      ),
    );
  }
}
