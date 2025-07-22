import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_cubit.dart';
import 'package:fasila/features/category_details/presentation/manager/planets_cubit/planets_state.dart';
import 'package:fasila/features/category_details/presentation/view/widget/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfCateroriesItemsWidget extends StatefulWidget {
  const ListOfCateroriesItemsWidget({super.key, required this.category});
  final String category;

  @override
  State<ListOfCateroriesItemsWidget> createState() =>
      _ListOfCateroriesItemsWidgetState();
}

class _ListOfCateroriesItemsWidgetState
    extends State<ListOfCateroriesItemsWidget> {
  late final PlanetsCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = PlanetsCubit();
    _cubit.getAllPlanets();
    _cubit.getCategoryPlanets(categoryName: widget.category);
  }

  @override
  void didUpdateWidget(covariant ListOfCateroriesItemsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.category != widget.category) {
      if (widget.category == 'All') {
        _cubit.getAllPlanets();
      } else {
        _cubit.getCategoryPlanets(categoryName: widget.category);
      }
    }
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<PlanetsCubit, PlanetsState>(
        builder: (context, state) {
          if (state is PlanetsLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PlanetsFailedState) {
            return Text(state.error);
          } else if (state is PlanetsSuccessState) { 

            return Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final item = state.planets[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CategoryItemWidget(planetModel: item),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: state.planets.length,
              ),
            );
          } else {
            return const Text("Something went wrong.");
          }
        },
      ),
    );
  }
}
