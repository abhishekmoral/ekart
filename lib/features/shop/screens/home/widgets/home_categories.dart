import 'package:flutter/material.dart';

import '../../../../../common/wigets/Image_text_widgets/vertical_image_texts.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';

class XHomeCategories extends StatelessWidget {
  const XHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return XVerticalImageText(
            title: XTexts.skip,
            image: XImages.sportIcon,
            onTap: () {},
          );
        },
      ),
    );
  }
}
