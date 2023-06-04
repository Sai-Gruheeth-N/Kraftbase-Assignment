import 'package:flutter/material.dart';
import 'package:kraftbase/resources/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  const CustomIconButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
