import 'package:binadim_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class BAHomeCategories extends StatelessWidget {
  const BAHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BAVerticalImageText(
            image: BAImages.lightApplogo,
            title: "shoes",
            onTap: () {},
          );
        },
      ),
    );
  }
}
