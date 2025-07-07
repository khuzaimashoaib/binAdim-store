import 'package:binadim_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class BARatingStarIndicator extends StatelessWidget {
  const BARatingStarIndicator({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: BAColors.grey,
      itemBuilder: (_, index) =>
          const Icon(Iconsax.star1, color: BAColors.primaryColor),
    );
  }
}
