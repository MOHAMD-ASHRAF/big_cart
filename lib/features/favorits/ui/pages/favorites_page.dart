import 'package:flutter/material.dart';
import '../../../../core/widgets/favorites_product_item_widget.dart';
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return  FavoritesProductItemWidget();}
      ),
    );
  }
}

// void doNothing(BuildContext context) {}
