import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_cubit.dart';
import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_state.dart';
import 'package:fasila/features/category_details/presentation/view/widget/category_item_widget.dart';
import 'package:fasila/features/my_planet/data/my_planet_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfCateroriesItemsWidget extends StatelessWidget {
  const ListOfCateroriesItemsWidget({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    final planetsCubit = BlocProvider.of<PlanetsCubit>(context);
    return BlocBuilder<PlanetsCubit, PlanetsState>(
      bloc: planetsCubit,
      builder: (context, state) {
        if (state is PlanetsLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is PlanetsFailedState) {
          print(state.error);
          return Text(state.error);
        }
        if (state is PlanetsSuccessState) {
          return Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                final item = myPlanetData[category]![index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CategoryItemWidget(myPlanetModel: item),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemCount: myPlanetData[category]!.length,
            ),
          );
        } else {
          return const Text("error");
        }
      },
    );
  }
}
