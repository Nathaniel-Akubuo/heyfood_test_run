import 'package:flutter/material.dart';

import '../../../utilities/ui_helpers.dart';
import 'menu_item_widget.dart';

class CustomTab extends StatelessWidget {
  final String title;
  const CustomTab({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: kTitleTextStyle.copyWith(fontSize: 24)),
        const MenuItemWidget(title: 'Sandwich'),
        verticalSpaceCustom(16),
        const MenuItemWidget(title: 'Pizza', popular: true),
        verticalSpaceCustom(16),
        const MenuItemWidget(title: 'Scallion Cream Cheese'),
        verticalSpaceCustom(16),
        const MenuItemWidget(title: 'Side of bacon'),
        verticalSpaceCustom(16),
      ],
    );
  }
}
