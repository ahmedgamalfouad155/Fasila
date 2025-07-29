import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/widgets/custom_emty_page_widget.dart';
import 'package:fasila/features/my_planet/presentation/manager/my_planet_cubit/my_planet_cubit.dart';
import 'package:fasila/features/my_planet/presentation/manager/my_planet_cubit/my_planet_state.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_item_widget.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfMyPlanetItemsWidget extends StatelessWidget {
  const ListOfMyPlanetItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyPlanetCubit, MyPlanetState>(
      builder: (context, state) {
        if (state is MyPlanetLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is MyPlanetFailedState) {
          return Text(state.error);
        } else if (state is MyPlanetSuccessState) {
          final myPlanets = state.myPlanets;
          if (myPlanets.isEmpty) {
            return CustomEmptyPage(
              image: AppImages.emptyMyPlanetImage,
              title: S.of(context).youHaveNoCarePlants,
              subTitle: S.of(context).prowseAndAddNewPlants,
            );
          }
          return Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: MyPlanetItemWidget(planet: myPlanets[index]),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemCount: state.myPlanets.length,
            ),
          );
        } else {
          return Text("error");
        }
      },
    );
  }
}
