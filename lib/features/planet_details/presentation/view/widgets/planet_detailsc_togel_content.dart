import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/presentation/manager/togel_cubit/details_togel_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_info_content.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/reminder_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetDetailscTogelContent extends StatelessWidget {
  const PlanetDetailscTogelContent({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.watch<DetailsTogelCubit>().state;

    return selectedTab == FavoriteTogelTap.plantInfo
        ? PlanetInfoContent(planetModel: planetModel,)
        : const ReminderContent();
  }
}
