import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/presentation/manager/deleting_planet_cubit/deleting_planet_cubit.dart';
import 'package:fasila/features/planet_details/presentation/manager/togel_cubit/details_togel_cubit.dart';
import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/days_toget_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/date_text_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/image_planet_details_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_detailsc_togel_content.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/togel_button_details_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/weeks_text_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/days_togel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetDetailsViewBody extends StatelessWidget {
  const PlanetDetailsViewBody({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocProvider(
          create: (context) => DetailsTogelCubit(),
          child: BlocProvider(
            create: (context) => DaysTogetCubit(),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 5,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: context.appColors.offWhite,
                  ),
                  child: Column(
                    children: [
                      BlocProvider(
                        create: (context) => DeletingPlanetCubit(),
                        child: ImagePlanetDetailsWidget(
                          planetModel: planetModel,
                        ),
                      ),
                      const SizedBox(height: 10),
                      WeeksWidget(),
                      const SizedBox(height: 10),
                      DateTextWidget(),
                      const SizedBox(height: 10),
                      DaysTogelWidget(),
                      const SizedBox(height: 10),
                      const TogelButtonDetailsWidget(),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 5,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: context.appColors.offWhite,
                  ),
                  child: PlanetDetailscTogelContent(planetModel: planetModel),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
