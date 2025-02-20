import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'bigCart_app.dart';
import 'core/routing/app_router.dart';


void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(BigCartApp(
    appRouter: AppRouter(),
  ));
}
