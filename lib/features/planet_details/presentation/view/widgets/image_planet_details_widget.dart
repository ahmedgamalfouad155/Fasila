import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/presentation/manager/deleting_planet_cubit/deleting_planet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePlanetDetailsWidget extends StatelessWidget {
  const ImagePlanetDetailsWidget({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: CustomsBoxDecoration().defaultBoxDecoration(context),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(imageUrl: planetModel.imageUrl),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: context.appColors.white,
            child: IconButton(
              onPressed: () {
                context.read<DeletingPlanetCubit>().deleteMyPlanet(planetModel);
                Navigator.pop(context);
              },
              icon: Icon(Icons.delete_outline, color: context.appColors.teal),
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: context.appColors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: context.appColors.teal, width: 1),
            ),
            child: Text(
              planetModel.name,
              style: AppStyles.textStyle14(context).copyWith(
                color: context.appColors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
