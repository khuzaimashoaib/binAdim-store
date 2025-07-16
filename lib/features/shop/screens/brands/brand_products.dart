import 'package:binadim_store/common/widgets/brands/brand_card.dart';
import 'package:binadim_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class BABrandProducts extends StatelessWidget {
  const BABrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAAppBar(
        title: Text(
          "Nike",
          // style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BASizes.defaultSpace),
          child: Column(
            children: [
              BABrandCard(showBorder: true),
              const SizedBox(height: BASizes.spaceBtwSections),
              BASortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
