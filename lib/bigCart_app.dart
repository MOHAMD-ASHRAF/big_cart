import 'package:big_cart/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class BigCartApp extends StatelessWidget {
  final AppRouter appRouter;

  const BigCartApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        onGenerateRoute: appRouter.generateRoute,
        title: 'Big Cart',
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.background
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingPage,
      ),
    );
  }
}
