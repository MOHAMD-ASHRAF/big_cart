import 'package:big_cart/core/theming/app_colors.dart';
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
                          backgroundImage: AssetImage('assets/images/profile.jpg'),
                        ),
                        Positioned(
                          bottom: 4,
                          right: 4,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.green,
                            child: Icon(Icons.camera_alt, size: 15, color: Colors.white),
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
                children: [
                  buildMenuItem(Icons.person_outline, 'About me'),
                  buildMenuItem(Icons.inventory_2_outlined, 'My Orders'),
                  buildMenuItem(Icons.favorite_border, 'My Favorites'),
                  buildMenuItem(Icons.location_on_outlined, 'My Address'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String title) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.green),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
          onTap: () {},
        ),

      ],
    );
  }
}
