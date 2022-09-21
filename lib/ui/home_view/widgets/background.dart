import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../utilities/app_values.dart';

class FlexibleSpaceBarBackground extends StatelessWidget {
  const FlexibleSpaceBarBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Image.asset(
            'assets/burger.jpeg',
            fit: BoxFit.cover,
            width: double.maxFinite,
          ),
        ),
        const SizedBox(
          height: 150,
          width: double.maxFinite,
          child: GoogleMap(
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: LatLng(AppValues.lat, AppValues.lng),
              zoom: 8,
            ),
          ),
        )
      ],
    );
  }
}
