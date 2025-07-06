import 'package:fasila/features/planet_details/presentation/manager/togel_cubit/togel_cubit.dart';
import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/weeks_toget_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/date_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/image_planet_details_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_detailsc_togel_content.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/togel_button_details_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/weeks_text_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/weeks_togel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetDetailsViewBody extends StatelessWidget {
  const PlanetDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (context) => TogelCubit(),
        child: Column(
          children: [
            ImagePlanetDetailsWidget(),
            const SizedBox(height: 10),
            WeeksWidget(),
            const SizedBox(height: 10),
            DateWidget(),
            const SizedBox(height: 10),
            BlocProvider(
              create: (context) => WeeksTogetCubit(),
              child: WeeksTogelWidget(),
            ),
            const TogelButtonDetailsWidget(),
            const SizedBox(height: 10),
            const Expanded(
              child: SingleChildScrollView(child: PlanetDetailscTogelContent()),
            ),
          ],
        ),
      ),
    );
  }
}
