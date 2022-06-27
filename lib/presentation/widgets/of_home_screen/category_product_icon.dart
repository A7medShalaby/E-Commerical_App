import 'package:e_commercial_app/constants/strings.dart';
import 'package:flutter/material.dart';

class BuildCategoryProductCircularIcon extends StatelessWidget {
  final String iconPath;
  const BuildCategoryProductCircularIcon({
    Key? key,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 39,
      backgroundColor: AppColors.blackColor,
      child: SizedBox(
        height: 60,
        child: Image(
          image: AssetImage("assets/icons/categories/$iconPath"),
        ),
      ),
    );
  }
}
