import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAAppBar(showBackArrow: true, title: Text("Add new Address")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(BASizes.defaultSpace),
          child: Column(children: []),
        ),
      ),
    );
  }
}
