import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:flutter/material.dart';

class DescriptionCategoryDetailsWidget extends StatelessWidget {
  const DescriptionCategoryDetailsWidget({
    super.key,
    required this.planetModel,
  });
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsetsGeometry.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.appColors.offWhite,
        boxShadow: [
          BoxShadow(
            color: context.appColors.grey,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.error, color: context.appColors.teal),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              planetModel.description,
              style: AppStyles.textStyle14(
                context,
              ).copyWith(color: context.appColors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
