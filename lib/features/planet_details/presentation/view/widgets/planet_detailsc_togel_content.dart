import 'package:fasila/features/planet_details/presentation/manager/togel_cubit/details_togel_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_info_content.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/reminder_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetDetailscTogelContent extends StatelessWidget {
  const PlanetDetailscTogelContent({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.watch<DetailsTogelCubit>().state;

    return selectedTab == FavoriteTogelTap.plantInfo
        ? const PlanetInfoContent()
        : const ReminderContent();
  }
}
