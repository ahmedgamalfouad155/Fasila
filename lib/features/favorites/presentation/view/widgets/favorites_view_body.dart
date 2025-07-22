import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/favorites/presentation/manager/favorire_togel_cubit/favorite_togel_cubit.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_details_togel_content.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/togel_favorite_button_widet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesViewBody extends StatelessWidget {
  const FavoritesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteTogelCubit(),
      child: Column(
        children: [
          TogelFavoriteButtonWidet(),
          const SizedBox(height: 10),
          Divider(
            color: context.appColors.teal,
            thickness: 2,
            height: 0,
            endIndent: 20,
            indent: 20,
          ),
          const SizedBox(height: 10),
          FavoriteDetailsTogelContent(),
        ],
      ),
    );
  }
}
