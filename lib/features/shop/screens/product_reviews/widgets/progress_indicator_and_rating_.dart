import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class BARatingProgressIndicator extends StatelessWidget {
  const BARatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: BADeviceUtility.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: BAColors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(BAColors.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
