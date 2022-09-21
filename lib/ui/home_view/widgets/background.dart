import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
              target: LatLng(6.9657011, 3.5686053),
              zoom: 8,
            ),
          ),
        )
      ],
    );
  }
}
