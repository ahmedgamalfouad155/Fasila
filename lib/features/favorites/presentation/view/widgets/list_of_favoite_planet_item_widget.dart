
import 'package:fasila/features/favorites/presentation/manager/favorite_planet_cubit/favorite_planet_cubit.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_planet_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfFavoitePlanetItemWidget extends StatefulWidget {
  const ListOfFavoitePlanetItemWidget({super.key, required this.category});
  final String category;

  @override
  State<ListOfFavoitePlanetItemWidget> createState() =>
      _ListOfFavoitePlanetItemWidgetState();
}

class _ListOfFavoitePlanetItemWidgetState
    extends State<ListOfFavoitePlanetItemWidget> {
  late final FavoritePlanetCubit _cubit;

  @override
  void initState() {
    _cubit = FavoritePlanetCubit();
    _cubit.getAllFavoritePlanets();
    _cubit.getFavoritePlanetsDependedOnCategoryName(
      categoryName: widget.category,
    );
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ListOfFavoitePlanetItemWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.category != widget.category) {
      if (widget.category == 'All') {
        _cubit.getAllFavoritePlanets();
      } else {
        _cubit.getFavoritePlanetsDependedOnCategoryName(
          categoryName: widget.category,
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
      child: BlocBuilder<FavoritePlanetCubit, FavoritePlanetState>(
        builder: (context, state) {
          if (state is FavoritePlanetLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FavoritePlanetFailedState) {
            return Text(state.error);
          } else if (state is FavoritePlanetSuccessState ) {
            return SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final item = state.favoritePlanets[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: FavoritePlanetItemWidget(planetModel: item),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: state.favoritePlanets.length,
              ),
            );
          } else { 
            return Text("error in list of favorite planet item widget");
          }
        },
      ),
    );
  }
}
