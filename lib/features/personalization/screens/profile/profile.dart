import 'package:binadim_store/common/widgets/appbar/appbar.dart';
import 'package:binadim_store/common/widgets/images/circular_image.dart';
import 'package:binadim_store/common/widgets/texts/section_heading.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAAppBar(showBackArrow: true, title: Text("Profile")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(BASizes.defaultSpace),
          child: Column(
            children: [
              //Profile Image
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    BACircularImage(
                      image: BAImages.user,
                      height: 80,
                      width: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: BASizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: BASizes.spaceBtwItems),

              // Heading Profile Info
              BASectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(height: BASizes.spaceBtwItems),

              BAProfileMenu(
                title: "Name",
                value: "Khuzaima Shoaib",
                onTap: () {},
              ),
              BAProfileMenu(
                title: "Username",
                value: "khuzaima_hoaib",
                onTap: () {},
              ),

              const SizedBox(height: BASizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: BASizes.spaceBtwItems),

              // Heading Personal Info
              BASectionHeading(
                title: "Personal Information",
                showActionButton: false,
              ),
              const SizedBox(height: BASizes.spaceBtwItems),

              BAProfileMenu(
                title: "User ID",
                value: "123456",
                icon: Iconsax.copy,
                onTap: () {},
              ),
              BAProfileMenu(
                title: "E-mail",
                value: "khuzaima.shoaib@gmail.com",
                onTap: () {},
              ),
              BAProfileMenu(
                title: "Phone Number",
                value: "+92 123-4567890",
                onTap: () {},
              ),
              BAProfileMenu(title: "Gender", value: "Male", onTap: () {}),
              BAProfileMenu(
                title: "Date of Birth",
                value: "01 Jan, 2000",
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(height: BASizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Close Account",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BAProfileMenu extends StatelessWidget {
  const BAProfileMenu({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
    required this.onTap,
  });

  final String title, value;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: BASizes.spaceBtwItems / 1.5,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(child: Icon(icon, size: 18)),
          ],
        ),
      ),
    );
  }
}
