import 'package:flutter/material.dart';
import 'package:heyfood_test_run/widgets/buttons/custom_card.dart';

import '../../../utilities/ui_helpers.dart';

class MenuItemWidget extends StatelessWidget {
  final String title;
  final bool popular;
  const MenuItemWidget({super.key, required this.title, this.popular = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: kHomeTitleTextStyle),
            Text(
              r'$4.99',
              style: kSubtitleTextStyle.copyWith(color: Colors.grey),
            ),
            Visibility(
              visible: popular,
              child: CustomCard(
                color: Colors.green,
                padding: k4pxPadding,
                borderRadius: k16pxBorderRadius,
                child: Text(
                  'Popular',
                  style: kSubtitleTextStyle.copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        Image.asset(
          'assets/${title.toLowerCase()}.jpeg',
          height: 120,
          width: 120,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
