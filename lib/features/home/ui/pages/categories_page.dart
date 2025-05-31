import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../core/enums/categories.dart';
import '../widgets/categories_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
        child: StaggeredGrid.count(
          crossAxisCount: 3, // 2 items per row
          mainAxisSpacing: 14.h,
          crossAxisSpacing: 10.w,
          children: List.generate(Categories.values.length, (index) {
            return GestureDetector(
                onTap: () {
                  // context.pushNamed(Routes.productDetailsPage);
                },
                child: Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: CategoriesItem(
                      title: Categories.values[index].getName,
                      image: Categories.values[index].getAsset,
                      color: Categories.values[index].getColor),
                ));
          }),
        ),
      ),
    );
  }
}
