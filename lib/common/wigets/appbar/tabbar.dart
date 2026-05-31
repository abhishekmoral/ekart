import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_function.dart';

class XTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in Material widget.
  /// To do that we need [PreferredSize] Widget and that's why created custom class. [PreferredSizeWidget]
  const XTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? XColors.black : XColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: XColors.primary,
        labelColor: dark ? XColors.white : XColors.primary,
        unselectedLabelColor: XColors.darkGrey,
      ), // TabBar
    ); // Material
  }

  @override
  Size get preferredSize => Size.fromHeight(XDeviceUtils.getAppBarHeight());
}