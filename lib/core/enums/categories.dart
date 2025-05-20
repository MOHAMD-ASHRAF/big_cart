import 'dart:ui';
import '../constants/app_assets.dart';
import '../theming/app_colors.dart';
/// by : mohamed ashraf
enum Categories {
  vegetables,
  fruits,
  beverages,
  grocery,
  edibleOil,
household,
  babyCare,
}

extension GetApprovalStatusName on Categories {
  String get getName {
    switch (this) {
      case Categories.vegetables:
        return 'Vegetables';
      case Categories.fruits:
        return 'Fruits';
      case Categories.beverages:
        return 'Beverages';
      case Categories.grocery:
        return 'Grocery';
      case Categories.edibleOil:
        return 'Edible Oil';
      case Categories.household:
        return 'Household';
      case Categories.babyCare:
        return 'Baby Care';
      }
  }
}

extension GetRequestColor on Categories {
  Color get getColor {
    switch (this) {
      case Categories.vegetables:
        return AppColors.vegetables;
      case Categories.fruits:
        return AppColors.fruits;
      case Categories.beverages:
        return AppColors.beverages;
      case Categories.grocery:
        return AppColors.grocery;
      case Categories.edibleOil:
        return AppColors.edibleOil;
      case Categories.household:
        return AppColors.household;
      case Categories.babyCare:
        return AppColors.babyCare;
    }
  }
}
extension GetAsset on Categories {
  String get getAsset {
    switch (this) {
      case Categories.vegetables:
        return AppAssets.vegetable;
      case Categories.fruits:
        return AppAssets.fruits;
      case Categories.beverages:
        return AppAssets.beverages;
      case Categories.grocery:
        return AppAssets.grocery;
      case Categories.edibleOil:
        return AppAssets.edibleOil;
      case Categories.household:
        return AppAssets.household;
      case Categories.babyCare:
        return AppAssets.babyCare;
    }
  }
}