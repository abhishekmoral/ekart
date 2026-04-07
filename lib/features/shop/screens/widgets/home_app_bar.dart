import 'package:ekart/utils/constants/colors.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// SubTitle
          Text(
            XTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: XColors.grey,
            ),
          ),

          /// Title
          Text(
            XTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: XColors.white,
            ),
          ),
        ],
      ),

      /// Cart Icon with Badge
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.shopping_bag,
                color: XColors.white,
              ),
            ),

            /// Badge
            Positioned(
              right: 0,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: XColors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    '2',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: XColors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight) ;
}