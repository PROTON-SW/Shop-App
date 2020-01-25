import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
  });

<<<<<<< HEAD:lib/providers/product.dart
  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
=======
  void toggleFavorite() {
  isFavorite = ! isFavorite;
  notifyListeners();
}

}

>>>>>>> 37c851909b2e258cc235c43944a2abc333490746:lib/providers/product.dart
