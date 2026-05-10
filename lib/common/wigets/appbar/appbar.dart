import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class XAppBar extends StatelessWidget implements PreferredSizeWidget {
  const XAppBar({
    super.key,
    this.title,
    this.showBackArrow = true,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: XSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: leadingOnPressed ?? () => Get.back(),
                icon: Icon(leadingIcon ?? Iconsax.arrow_left),
              )
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,

        title: title,
        titleSpacing: XSizes.md,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(XDeviceUtils.getAppBarHeight());
}
