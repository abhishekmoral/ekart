import 'package:flutter/material.dart';

import '../../../../common/wigets/appbar/appbar.dart';
import '../../../../common/wigets/products/cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';

class XHomeAppBar extends StatelessWidget {
  const XHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return XAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            XTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: XColors.grey),
          ),
          Text(
            XTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineMedium!
                .apply(color: XColors.grey),
          ),
        ],
      ),
      actions: [
        XCartCounterIcon(
          onPressed: () {},
          iconColor: XColors.white,
        ),
      ],
    );
  }
}