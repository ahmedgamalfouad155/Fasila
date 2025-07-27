import 'package:fasila/core/logic/search_cubit.dart';
import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_cubit.dart';
import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_state.dart';
import 'package:fasila/features/category_details/presentation/view/widget/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfCateroriesItemsWidget extends StatelessWidget {
  const ListOfCateroriesItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlanetsCubit, PlanetsState>(
      builder: (context, state) {
        if (state is PlanetsLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is PlanetsFailedState) {
          return Text(state.error);
        } else if (state is PlanetsSuccessState) {
          final searchQuery = context.watch<SearchCubit>().state.toLowerCase(); 
          final filteredPlanets = searchQuery.isEmpty
              ? state.planets
              : state.planets
                    .where(
                      (planet) =>
                          planet.name.toLowerCase().contains(searchQuery),
                    )
                    .toList(); 
          return Expanded(
            child: filteredPlanets.isEmpty
                ? const Center(child: Text("No matching results found."))
                : ListView.separated(
                    itemBuilder: (context, index) {
                      final item = filteredPlanets[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CategoryItemWidget(planetModel: item),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 15),
                    itemCount: filteredPlanets.length,
                  ),
          );
        } else {
          return const Text("Something went wrong.");
        }
      },
    );
  }
}
