import 'package:flutter/material.dart';
import 'package:heyfood_test_run/ui/home_view/widgets/background.dart';
import 'package:heyfood_test_run/ui/home_view/widgets/custom_tab.dart';
import 'package:heyfood_test_run/ui/home_view/widgets/item_description_column.dart';
import 'package:heyfood_test_run/ui/home_view/widgets/tab_bar_view.dart';
import 'package:heyfood_test_run/utilities/app_values.dart';
import 'package:heyfood_test_run/utilities/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../widgets/buttons/circular_button.dart';
import 'home_viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  var _height = 300.0;
  bool visible = false;
  final _duration = const Duration(milliseconds: 250);
  late ScrollController _controller;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _controller = ScrollController();
    _controller.addListener(_listener);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _listener() {
    setState(() {});
  }

  bool get _collapsed => _height < 150;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          controller: _controller,
          slivers: [
            SliverAppBar(
              elevation: 0,
              expandedHeight: 300,
              backgroundColor: Colors.white,
              pinned: true,
              title: AnimatedOpacity(
                duration: _duration,
                opacity: _collapsed ? 1 : 0,
                child: Text(
                  AppValues.leosBagels,
                  style: kAppBarTextStyle,
                ),
              ),
              leading: const Padding(
                padding: EdgeInsets.only(left: 16),
                child: CircularButton(
                  diameter: 35,
                  child: Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10),
                child: Visibility(
                  visible: _collapsed,
                  child: CustomTabBarView(tabController: _tabController),
                ),
              ),
              flexibleSpace: LayoutBuilder(
                builder: (_, constraints) {
                  _height = constraints.biggest.height;
                  return const FlexibleSpaceBar(
                    background: FlexibleSpaceBarBackground(),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: AnimatedOpacity(
                opacity: !_collapsed ? 1 : 0,
                duration: _duration,
                child: Visibility(
                  visible: !_collapsed,
                  child: ItemDescription(
                    collapsed: _collapsed,
                    onTap: model.navigateToDetails,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                padding: kMainPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VisibilityDetector(
                      key: const Key('0'),
                      onVisibilityChanged: (info) {
                        if (info.visibleFraction.round() == 1) {
                          _tabController.animateTo(0);
                        }
                      },
                      child: const CustomTab(title: 'PICKED FOR YOU'),
                    ),
                    VisibilityDetector(
                      key: const Key('1'),
                      onVisibilityChanged: (info) {
                        if (info.visibleFraction.round() == 1) {
                          _tabController.animateTo(1);
                        }
                      },
                      child: const CustomTab(title: 'BAGELS AND BREAD'),
                    ),
                    VisibilityDetector(
                      key: const Key('2'),
                      onVisibilityChanged: (info) {
                        if (info.visibleFraction.round() == 1) {
                          _tabController.animateTo(2);
                        }
                      },
                      child: const CustomTab(title: 'BREAKFAST'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
