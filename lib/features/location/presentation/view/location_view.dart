import 'package:fasila/core/widgets/custom_titil_and_logos_app_bar.dart';
import 'package:fasila/features/location/presentation/view/widgets/location_view_body.dart';
import 'package:flutter/material.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customTitleAndLogoosAppBar(title: 'Location', context: context),
      body: LocationViewBody(),
    );
  }
}
