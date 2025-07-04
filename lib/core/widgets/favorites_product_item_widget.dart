import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../constants/app_assets.dart';
import '../theming/app_text_styles.dart';
import 'counter_widget.dart';

class FavoritesProductItemWidget extends StatefulWidget {
  const FavoritesProductItemWidget({super.key});

  @override
  State<FavoritesProductItemWidget> createState() => _FavoritesProductItemWidgetState();
}

class _FavoritesProductItemWidgetState extends State<FavoritesProductItemWidget>  with SingleTickerProviderStateMixin{
  late final controller = SlidableController(this);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 10.w , vertical: 4.h),
      child: Slidable(
          key: const ValueKey(0),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            dismissible: DismissiblePane(onDismissed: () {
            }),
            children: [
              SlidableAction(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  bottomLeft: Radius.circular(8.r),
                ),
                onPressed: (_) => controller.openEndActionPane(),
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: Container(
              padding:  EdgeInsets.symmetric(horizontal: 10.w , vertical: 16.h),
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
                          SizedBox(height: 4.h,),
                          Text(
                            'Product name',
                            style: AppTextStyles.font16BlackCairoMedium,
                          ),
                          SizedBox(height: 4.h,),
                          Text(
                            'Product description ',
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.font12GrayCairoRegular,
                            maxLines: 2,
                          ),
                        ]
                    ),
                    const Spacer(),
                    const CounterWidget(counter: 5,)
                  ]
              )

          )
      ),
    );
  }
}
