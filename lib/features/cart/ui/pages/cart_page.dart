import 'package:flutter/material.dart';
import '../../../../core/widgets/favorites_product_item_widget.dart';
import '../widget/checkOut _widget.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return  const FavoritesProductItemWidget();}
          ),

          const CheckOutWidget(),
        ],
      ),
    );
  }
}

// void doNothing(BuildContext context) {}
