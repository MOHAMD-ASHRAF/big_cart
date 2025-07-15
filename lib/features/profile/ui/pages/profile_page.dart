import 'package:big_cart/core/theming/app_colors.dart';
import 'package:big_cart/features/profile/ui/widget/build_menu_item_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 100.h,
                    ),
                    Container(
                      height: 130.h,
                      color: AppColors.background,
                      width: double.infinity,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/image/person.png'),
                        ),
                        Positioned(
                          bottom: 4,
                          right: 4,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.green,
                            child: Icon(Icons.camera_alt,
                                size: 15, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Olivia Austin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "oliviaaustin@gmail.com",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView(
                // padding: const EdgeInsets.all(16),
                children: const [
                  BuildMenuItemProfile(
                      icon: Icons.person_outline, title: 'About me'),
                  BuildMenuItemProfile(
                      icon: Icons.inventory_2_outlined, title: 'My Orders'),
                  BuildMenuItemProfile(
                      icon: Icons.favorite_border, title: 'My Favorites'),
                  BuildMenuItemProfile(
                      icon: Icons.location_on_outlined, title: 'My Address'),
                  BuildMenuItemProfile(
                      icon: Icons.credit_card, title: 'Credit Card'),
                  BuildMenuItemProfile(
                      icon: Icons.attractions_outlined, title: 'Transactions'),
                  BuildMenuItemProfile(
                      icon: Icons.notifications_outlined, title: 'Notifications'),
                  BuildMenuItemProfile(
                      icon: Icons.arrow_back, title: 'Sign out'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
