import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_favorite_cubit/add_to_favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteIconWidget extends StatelessWidget {
  const FavoriteIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddToFavoriteCubit, bool>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<AddToFavoriteCubit>().changeIcon(!state),
          child: Icon(
            state ? Icons.favorite : Icons.favorite_border,
            size: 15,
            color: context.appColors.teal,
          ),
        );
      },
    );
  }
}
