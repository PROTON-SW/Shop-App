import 'dart:io';

import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/providers/cart.dart';

import './providers/products-provider.dart';
import './screens/product-details-screen.dart';
import './screens/products-overview-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final PreferredSizeWidget appBar = Platform.isIOS
      ? CupertinoNavigationBar(
          middle: Text('Shop App'),
        )
      : AppBar(
          title: Text('Shop App'),
        );
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'Lato',
          ),
          routes: {
            ProductsOverviewScreen.routeName: (ctx) => ProductsOverviewScreen(
                  appBar: appBar,
                ),
            ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(
                ),
          },
          home: ProductsOverviewScreen(
            appBar: appBar,
          ),
        ),
    );
  }
}
