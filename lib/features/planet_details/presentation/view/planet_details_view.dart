import 'package:fasila/core/widgets/custom_titil_and_logos_app_bar.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlanetDetailsView extends StatelessWidget {
  const PlanetDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final planetModel = GoRouterState.of(context).extra as PlanetModel;
    return Scaffold(
      appBar: customTitleAndLogoosAppBar(title: 'My Garden', context: context),
      body: PlanetDetailsViewBody(planetModel:  planetModel,),
    );
  }
}
