import 'package:fasila/features/category_details/presentation/view/widget/custom_planet_loding_widget.dart';
import 'package:fasila/features/my_planet/presentation/manager/my_planet_cubit/my_planet_cubit.dart';
import 'package:fasila/features/my_planet/presentation/manager/my_planet_cubit/my_planet_state.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfMyPlanetItemsWidget extends StatelessWidget {
  const ListOfMyPlanetItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyPlanetCubit, MyPlanetState>(
      builder: (context, state) {
        if (state is MyPlanetLoadingState) {
          return const CustomShimerPlanetLoadingWidget();
        } else if (state is MyPlanetFailedState) {
          return Text(state.error);
        } else if (state is MyPlanetSuccessState) {
          return Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                final item = state.myPlanets[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: MyPlanetItemWidget(planet: item),
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
