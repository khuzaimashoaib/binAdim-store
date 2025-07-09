import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Address",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
                SizedBox(height: BASizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(Iconsax.mobile),
                  ),
                ),
                SizedBox(height: BASizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Street",
                          prefixIcon: Icon(Iconsax.building_31),
                        ),
                      ),
                    ),
                    SizedBox(width: BASizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Postal Code",
                          prefixIcon: Icon(Iconsax.code),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: BASizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "City",
                          prefixIcon: Icon(Iconsax.building),
                        ),
                      ),
                    ),
                    SizedBox(width: BASizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "State",
                          prefixIcon: Icon(Iconsax.activity),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: BASizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Country",
                    prefixIcon: Icon(Iconsax.global),
                  ),
                ),
                SizedBox(height: BASizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Save Address"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
