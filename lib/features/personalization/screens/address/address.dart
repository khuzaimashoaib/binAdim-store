import 'package:binadim_store/features/personalization/screens/address/add_new_address.dart';
import 'package:binadim_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: BAColors.primaryColor,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: Icon(Iconsax.add, color: BAColors.white),
      ),
      appBar: BAAppBar(
        showBackArrow: true,
        title: Text(
          "Addresses",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(BASizes.defaultSpace),
          child: Column(
            children: [
              BASingleAddress(selectedAddress: true),
              BASingleAddress(selectedAddress: true),
              BASingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
