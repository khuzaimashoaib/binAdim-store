import 'package:binadim_store/common/widgets/images/circular_image.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BAUserProfileTile extends StatelessWidget {
  const BAUserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: BACircularImage(
        image: BAImages.user,
        height: 50,
        width: 50,
        padding: 0,
      ),
      title: Text(
        "Khuzaima Shoaib",
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: BAColors.white),
      ),
      subtitle: Text(
        "khuzaima.shoaib@gmail.com",
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: BAColors.white),
      ),
      trailing: IconButton(
        icon: const Icon(Iconsax.edit, color: BAColors.white),
        onPressed: () {},
      ),
    );
  }
}
