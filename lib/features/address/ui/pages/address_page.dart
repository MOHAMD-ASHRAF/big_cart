import 'package:big_cart/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/model/details_item_model.dart';
import '../widget/details_item_text_widget.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  List<bool> isExpandedList = [];

  List<DetailsItemModel> items = [
    DetailsItemModel('Mohamed Ashraf', 'Cairo, Nasr City', number: 1022953656),
    DetailsItemModel('Ahmed Ali', 'Cairo, Nasr City', number: 1022953656),
  ];

  @override
  void initState() {
    super.initState();
    isExpandedList = List.filled(items.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Address'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        padding: EdgeInsets.all(16.w),
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
        itemBuilder: (context, index) {
          final item = items[index];
          final isExpanded = isExpandedList[index];
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: AppColors.primaryDark,
                    // Change to your desired border color
                    width: 1.0, // Optional: set border width
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                          color: AppColors.lightGray,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: const Icon(Icons.person,
                            color: AppColors.primaryDark),
                      ),
                      title: Text(item.title),
                      subtitle: Text(item.subtitle),
                      trailing: const SizedBox.shrink(), // remove arrow
                    ),
                    // Show 'Show More' button only when collapsed
                    if (!isExpanded)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isExpandedList[index] = true;
                          });
                        },
                        child: Container(
                          height: 40.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.primaryDark,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(7.r),
                              bottomRight: Radius.circular(7.r),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Show More',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.sp),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: Colors.white,
                                size: 32.sp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    AnimatedCrossFade(
                      firstChild: const SizedBox.shrink(),
                      secondChild: Padding(
                        padding: EdgeInsets.only(bottom: 0.h, top: 16.h),
                        child: Column(
                          children: [
                            const DetailsItemTextWidget(
                              title: 'Name',
                              value: 'Mohamed Ashraf',
                            ),
                            const Divider(
                              color: AppColors.lightGray,
                              thickness: 1,
                            ),
                            SizedBox(height: 6.h),
                            const DetailsItemTextWidget(
                              title: 'Address',
                              value: 'Cairo, Nasr City',
                            ),
                            const Divider(
                              color: AppColors.lightGray,
                              thickness: 1,
                            ),
                            SizedBox(height: 6.h),
                            const DetailsItemTextWidget(
                              title: 'Country',
                              value: 'Egypt',
                            ),
                            const Divider(
                              color: AppColors.lightGray,
                              thickness: 1,
                            ),
                            SizedBox(height: 6.h),
                            const DetailsItemTextWidget(
                              title: 'City',
                              value: 'cairo',
                            ),
                            const Divider(
                              color: AppColors.lightGray,
                              thickness: 1,
                            ),
                            SizedBox(height: 6.h),
                            const DetailsItemTextWidget(
                              title: 'Phone Number',
                              value: '1022953656',
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpandedList[index] = false;
                                });
                              },
                              child: Container(
                                height: 40.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryDark,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(7.r),
                                    bottomRight: Radius.circular(7.r),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Show Less',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16.sp),
                                    ),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_up_sharp,
                                      color: Colors.white,
                                      size: 32.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      crossFadeState: isExpanded
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      duration: const Duration(milliseconds: 200),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
