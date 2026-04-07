import 'package:ekart/features/shop/screens/home.dart';
import 'package:ekart/utils/constants/colors.dart';
import 'package:ekart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = XHelperFunctions.isDarkMode(context);
    final isWeb = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      /// Mobile Bottom Navigation Bar
      bottomNavigationBar: isWeb
          ? null
          : Obx(
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

      body: isWeb
          ? Row(
        children: [
          /// Web Side Navigation Rail
          Obx(
                () => NavigationRail(
              extended: MediaQuery.of(context).size.width > 1024,
              backgroundColor: dark ? XColors.black : XColors.white,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
              indicatorColor: dark
                  ? XColors.white.withOpacity(0.1)
                  : XColors.black.withOpacity(0.1),
              destinations: const [
                /// Home
                NavigationRailDestination(
                  icon: Icon(Iconsax.home),
                  selectedIcon: Icon(Iconsax.home_1),
                  label: Text('Home'),
                ),

                /// Store
                NavigationRailDestination(
                  icon: Icon(Iconsax.shop),
                  selectedIcon: Icon(Iconsax.shop_add),
                  label: Text('Store'),
                ),

                /// Wishlist
                NavigationRailDestination(
                  icon: Icon(Iconsax.heart),
                  selectedIcon: Icon(Iconsax.heart_add),
                  label: Text('Wishlist'),
                ),

                /// Profile
                NavigationRailDestination(
                  icon: Icon(Iconsax.user),
                  selectedIcon: Icon(Iconsax.user_tick),
                  label: Text('Profile'),
                ),
              ],
            ),
          ),

          /// Vertical Divider
          const VerticalDivider(thickness: 1, width: 1),

          /// Screen Content
          Expanded(
            child: Obx(
                  () => controller.screens[controller.selectedIndex.value],
            ),
          ),
        ],
      )

      /// Mobile Screen Content
          : Obx(
            () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  RxInt selectedIndex = 0.obs;

  final screens = [
    /// Home Screen
    HomeScreen(),

    /// Store Screen
    Container(color: Colors.purple),

    /// Wishlist Screen
    Container(color: Colors.orange),

    /// Profile Screen
    Container(color: Colors.blue),
  ];
}