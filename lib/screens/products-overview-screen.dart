import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static const routeName = 'products-overview';
  PreferredSizeWidget appBar = Platform.isIOS 
  ? CupertinoNavigationBar(
    middle: Text('Shop App'),
  )
  : AppBar(
    title: Text('Shop App'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Text('Let\'s build shop app'),
      ),
    );
  }
}