import 'package:fasila/features/my_planet/presentation/manager/my_planet_cubit/my_planet_cubit.dart';
import 'package:fasila/features/my_planet/presentation/manager/my_planet_cubit/my_planet_state.dart';
import 'package:fasila/features/my_planet/presentation/view/widgets/my_planet_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfMyPlanetItemsWidget extends StatefulWidget {
  const ListOfMyPlanetItemsWidget({super.key, this.category});
  final String? category;

  @override
  State<ListOfMyPlanetItemsWidget> createState() =>
      _ListOfMyPlanetItemsWidgetState();
}

class _ListOfMyPlanetItemsWidgetState extends State<ListOfMyPlanetItemsWidget> {
  late final MyPlanetCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = MyPlanetCubit();
    _cubit.getAllMyPlanet();
    _cubit.getMyPlanetDependedOnCategoryName(categoryName: widget.category!);
  }

  @override
  void didUpdateWidget(covariant ListOfMyPlanetItemsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.category != widget.category) {
      if (widget.category == 'All') {
        _cubit.getAllMyPlanet();
      } else {
        _cubit.getMyPlanetDependedOnCategoryName(
          categoryName: widget.category!,
        );
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
      child: BlocBuilder<MyPlanetCubit, MyPlanetState>(
        builder: (context, state) {
          if (state is MyPlanetLoadingState) {
            return const Center(child: CircularProgressIndicator());
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
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: state.myPlanets.length,
              ),
            );
          } else {
            return Text("error");
          }
        },
      ),
    );
  }
}
