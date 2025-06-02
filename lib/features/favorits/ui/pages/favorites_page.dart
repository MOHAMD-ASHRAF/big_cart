import 'package:big_cart/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../core/theming/app_text_styles.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage>
    with SingleTickerProviderStateMixin {
  late final controller = SlidableController(this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView(
        children: [
          Slidable(
            key: const ValueKey(0),
            // The end action pane is the one at the right or the bottom side.
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: () {}),
              children: [
                SlidableAction(

                  flex: 1,
                  onPressed: (_) => controller.openEndActionPane(),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'delete',
                ),
              ],
            ),
            child: Container(
              padding:  EdgeInsets.symmetric(horizontal: 10.w , vertical: 16.h),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      AppAssets.offerImage,
                      height: 100.h,
                      width: 100.w,
                      fit: BoxFit.cover,
                    )
                ),
                  SizedBox(width: 8.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$ 100 * 4',
                        style: AppTextStyles.font12GreenCairoMedium,
                      ),
                      Text(
                        'Product name',
                        style: AppTextStyles.font16BlackCairoMedium,
                      ),
                      Text(
                        'Product description',
                        style: AppTextStyles.font12GrayCairoRegular,
                      ),
                    ]
                  )
                ]
              )

            )
          ),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}
