import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final VoidCallback onTap;
  const HomeAppBar({
    Key? key,
    required this.appBar,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(55),
      child: AppBar(
        backgroundColor: AppColors.pinkColor,
        title: const Text(
          "E-Commercial App",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0.8,
        //Menu Icon
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: AppColors.whiteColor,
          ),
          onPressed: onTap,
        ),
        actions: [
          //Search Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColors.whiteColor,
            ),
          ),
          //Notifications Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
