
import 'package:ekart/utils/constants/colors.dart';
import 'package:ekart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = XHelperFunctions.isDarkMode(context);

    return Scaffold(
      /// Bottom Navigation Bar
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark ? XColors.black : XColors.white,
          indicatorColor: dark
              ? XColors.white.withOpacity(0.1)
              : XColors.black.withOpacity(0.1),
          destinations: const [
            /// Home
            NavigationDestination(
              icon: Icon(Iconsax.home),
              selectedIcon: Icon(Iconsax.home_1),
              label: 'Home',
            ),

            /// Store
            NavigationDestination(
              icon: Icon(Iconsax.shop),
              selectedIcon: Icon(Iconsax.shop_add),
              label: 'Store',
            ),

            /// Wishlist
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              selectedIcon: Icon(Iconsax.heart_add),
              label: 'Wishlist',
            ),

            /// Profile
            NavigationDestination(
              icon: Icon(Iconsax.user),
              selectedIcon: Icon(Iconsax.user_tick),
              label: 'Profile',
            ),
          ],
        ),
      ),

      /// Screen Content
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  RxInt selectedIndex = 0.obs;

  final screens = [
    /// Home Screen
    const HomeScreen(),

    /// Store Screen
    Container(color: Colors.purple),

    /// Wishlist Screen
    Container(color: Colors.orange),

    /// Profile Screen
    Container(color: Colors.blue),
  ];
}
