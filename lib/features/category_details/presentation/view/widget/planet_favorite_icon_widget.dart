import 'package:fasila/core/theme/colors.dart';
import 'package:flutter/material.dart';

class PlanetFavoriteIconWidget extends StatelessWidget {
  const PlanetFavoriteIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Icon(
        Icons.favorite_border,
        size: 15,
        color: context.appColors.teal,
      ),
    );
  }
}
