import 'package:big_cart/core/helpers/extesions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../../core/routing/routes.dart';
import '../widgets/product_item.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
          child:  StaggeredGrid.count(
            crossAxisCount: 2, // 2 items per row
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.w,
            children: List.generate(11, (index) {
              return GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.productDetailsPage);
                  }, child: const ProductItem());
            }),
          ),
        ),
      ),
    );
  }
}
