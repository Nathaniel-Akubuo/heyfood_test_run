import 'package:flutter/material.dart';
import 'package:heyfood_test_run/utilities/ui_helpers.dart';

class CustomTabBarView extends StatelessWidget {
  final TabController tabController;

  const CustomTabBarView({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Icon(Icons.search),
        ),
        Expanded(
          child: TabBar(
            controller: tabController,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.black,
            indicatorPadding: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            tabs: [
              Text(
                'Picked for you',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: kSubtitleTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'Bagels and bread',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: kSubtitleTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'Breakfast',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: kSubtitleTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
