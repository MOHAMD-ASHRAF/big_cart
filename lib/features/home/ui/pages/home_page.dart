import 'package:big_cart/core/helpers/extesions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/enums/categories.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../widgets/categories_item.dart';
import '../widgets/categories_text_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomTextFormField(
                  hintText: 'Search keywords..',
                  prefixIcon: Icons.search,
                  fillColor: Colors.white,
                  suffixIcon: Icons.sort,
                ),
                SizedBox(height: 16.h),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    // Use any radius you prefer
                    image: const DecorationImage(
                      image: AssetImage(AppAssets.offerImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                const CategoriesTextWidget(
                  title: 'Categories',
                  //onTap: () => Navigator.pushNamed(context, Routes.categories),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 80.h,
                  child: ListView.separated(
                    itemCount: Categories.values.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 16.w),
                    itemBuilder: (context, index) => CategoriesItem(
                        title: Categories.values[index].getName,
                        image: Categories.values[index].getAsset,
                        color: Categories.values[index].getColor),
                  ),
                ),
                SizedBox(height: 16.h),
                const CategoriesTextWidget(
                  title: 'Featured products',
                  //onTap: () => Navigator.pushNamed(context, Routes.categories),
                ),
                SizedBox(height: 16.h),
                StaggeredGrid.count(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
