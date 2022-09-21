import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:heyfood_test_run/utilities/app_values.dart';
import 'package:stacked/stacked.dart';

import '../../utilities/ui_helpers.dart';
import '../../widgets/buttons/circular_button.dart';
import 'details_viewmodel.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailsViewModel>.reactive(
      viewModelBuilder: () => DetailsViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 250,
                  width: double.maxFinite,
                  child: GoogleMap(
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(AppValues.lat, AppValues.lng),
                      zoom: 8,
                    ),
                  ),
                ),
                Padding(
                  padding: kMainPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppValues.leosBagels,
                        style: kTitleTextStyle.copyWith(fontSize: 24),
                      ),
                      Wrap(
                        children: [
                          'Breakfast and brunch',
                          'Sandwiches',
                          'Salads',
                          'Healthy',
                          'Desserts',
                          'Group friendly',
                          r'$4.99',
                        ]
                            .map(
                              (e) => Text(
                                '$e • ',
                                style: kSubtitleTextStyle.copyWith(
                                    color: Colors.grey),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 1, height: 0),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Icon(Icons.location_pin, color: Colors.black),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '3, Hanover Square, New York, NY, 10004',
                          style: kHomeTitleTextStyle,
                        ),
                      ),
                      const Icon(Icons.copy_outlined),
                      horizontalSpaceCustom(16),
                    ],
                  ),
                  subtitle: const Divider(thickness: 1, height: 0),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Icon(Icons.access_time_filled, color: Colors.black),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Open until 2:00 PM',
                          style: kHomeTitleTextStyle,
                        ),
                      ),
                      const Icon(Icons.add),
                      horizontalSpaceCustom(16),
                    ],
                  ),
                ),
                const Divider(height: 0, thickness: 1),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/medal.jpeg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  subtitle: Text(
                    'One of the best spots on Uber Eats',
                    style: kSubtitleTextStyle.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  trailing: const Padding(
                    padding: k16pxPadding,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                  title: Text(
                    'Best overall',
                    style: kHomeTitleTextStyle,
                  ),
                ),
                const Divider(height: 0, thickness: 1),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Icon(Icons.star, color: Colors.black),
                  ),
                  title: Text(
                    '4.8 (500 + ratings)',
                    style: kHomeTitleTextStyle,
                  ),
                ),
                const Divider(height: 0, thickness: 1),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 16, top: MediaQuery.of(context).viewPadding.top),
              child: CircularButton(
                onTap: () => Navigator.of(context).pop(),
                diameter: 35,
                child: const Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
