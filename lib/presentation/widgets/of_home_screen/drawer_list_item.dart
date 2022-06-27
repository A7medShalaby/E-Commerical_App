// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';

class DrawerListTileItem extends StatelessWidget {
  final IconData itemIcon;
  final String itemTitle;
  final Color iconColor;
  final bool selected;
  final Function() setStateFunction;

  DrawerListTileItem({
    Key? key,
    required this.itemIcon,
    required this.itemTitle,
    required this.iconColor,
    required this.selected,
    required this.setStateFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        itemTitle,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: Icon(
        itemIcon,
        color: iconColor,
      ),
      onTap: setStateFunction,
      selected: selected,
    );
  }
}
