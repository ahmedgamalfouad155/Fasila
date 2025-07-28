import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_view_body.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';

class MyPlanetView extends StatelessWidget {
  const MyPlanetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).myPlants,
          style: AppStyles.textStyle16Teal(context),
        ),
      ),
      body: MyPlanetViewBody(),
    );
  }
}
