import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/location/presentation/view/widgets/location_view_body.dart';
import 'package:flutter/material.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location', style: AppStyles.textStyle16Teal(context)),
      ),
      body: LocationViewBody(),
    );
  }
}
