import 'package:flutter/material.dart';
import 'package:heyfood_test_run/widgets/buttons/custom_card.dart';

import '../../../utilities/app_strings.dart';
import '../../../utilities/ui_helpers.dart';

class ItemDescription extends StatelessWidget {
  final bool collapsed;
  final GestureTapCallback onTap;

  const ItemDescription({
    super.key,
    required this.collapsed,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: kMainPadding,
        decoration: const BoxDecoration(
          borderRadius: kRoundedTopBorder,
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: CustomCard(
                color: Colors.grey[300],
                height: 4,
                width: 50,
                borderRadius: k16pxBorderRadius,
                child: const SizedBox(),
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(microseconds: 250),
              opacity: collapsed ? 0 : 1,
              child: Text(
                AppStrings.leosBagels,
                style: kAppBarTextStyle.copyWith(fontSize: 24),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/medal.jpeg', height: 25),
                horizontalSpaceCustom(8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star, size: 18),
                        Text(
                          '4.8 (500+ ratings) • Breakfast and brunch',
                          style: kSubtitleTextStyle.copyWith(
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      r'$2.99',
                      style: kSubtitleTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Open until 2:30 PM',
                      style: kSubtitleTextStyle.copyWith(color: Colors.grey),
                    ),
                    Text(
                      'Tap for hours, address and more',
                      style: kSubtitleTextStyle.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            verticalSpaceCustom(8),
            CustomCard(
              height: 50,
              color: Colors.grey[200],
              borderRadius: k32pxBorderRadius,
              padding: k4pxPadding,
              child: Row(
                children: [
                  CustomCard(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    borderRadius: k32pxBorderRadius,
                    child: Column(
                      children: [
                        Expanded(
                          child: Text(
                            'Delivery',
                            style: kSubtitleTextStyle.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            r'45-55 min • $1.99',
                            style: kSubtitleTextStyle.copyWith(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pickup',
                        style: kSubtitleTextStyle.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Text(
                        '25-35 min • 1000+ mi',
                        style: kSubtitleTextStyle.copyWith(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer()
                ],
              ),
            ),
            verticalSpaceCustom(16),
            CustomCard(
              color: Colors.grey[200],
              padding: k8pxPadding,
              borderRadius: k32pxBorderRadius,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.person_add_alt),
                  horizontalSpaceCustom(8),
                  Text(
                    'Group order',
                    style: kSubtitleTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            verticalSpaceCustom(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All day menu',
                  style: kSubtitleTextStyle.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const Icon(Icons.search),
              ],
            )
          ],
        ),
      ),
    );
  }
}
