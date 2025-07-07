import 'package:binadim_store/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating_.dart';
import 'package:flutter/material.dart';

class BAProductOverallRating extends StatelessWidget {
  const BAProductOverallRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text("4.9", style: Theme.of(context).textTheme.displayLarge),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              BARatingProgressIndicator(text: "5", value: 0.6),
              BARatingProgressIndicator(text: "4", value: 0.3),
              BARatingProgressIndicator(text: "3", value: 0.2),
              BARatingProgressIndicator(text: "2", value: 0.15),
              BARatingProgressIndicator(text: "1", value: 0.5),
            ],
          ),
        ),
      ],
    );
  }
}
