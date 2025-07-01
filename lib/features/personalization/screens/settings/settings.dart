import 'package:binadim_store/common/widgets/appbar/appbar.dart';
import 'package:binadim_store/common/widgets/custom_shapes/containers/prim_header_container.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            BAPrimHeaderContainer(
              child: Column(
                children: [
                  BAAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: BAColors.white),
                    ),
                  ),
                  const SizedBox(height: BASizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
