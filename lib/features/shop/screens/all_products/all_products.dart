import 'package:binadim_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class BAAllProducts extends StatelessWidget {
  const BAAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAAppBar(
        showBackArrow: true,
        title: Text(
          "All Products",
          // style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BASizes.defaultSpace),
          child: BASortableProducts(),
        ),
      ),
    );
  }
}
