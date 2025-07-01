import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/device/device_utility.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BATabBar extends StatelessWidget implements PreferredSizeWidget {
  const BATabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    return Material(
      color: dark ? BAColors.black : BAColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicatorColor: BAColors.primaryColor,
        unselectedLabelColor: BAColors.darkGrey,
        labelColor: dark ? BAColors.white : BAColors.primaryColor,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(BADeviceUtility.getAppBarHeight());
}
