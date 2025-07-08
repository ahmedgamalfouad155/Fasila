import 'package:fasila/features/favorites/presentation/manager/favorite_togel_cubit.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_planet_content.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_products_content.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteDetailsTogelContent extends StatelessWidget {
  const FavoriteDetailsTogelContent({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.watch<FavoriteTogelCubit>().state;

    return selectedTab == FavoriteTogelTap.plants
        ? const FavoritePlanetContent()
        : const FavoriteProductsContent();
  }
}
