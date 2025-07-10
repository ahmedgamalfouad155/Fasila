import 'package:fasila/features/category_details/presentation/view/widget/care_content_guide_section_widget.dart';
import 'package:fasila/features/category_details/presentation/view/widget/diseases_content_guide_section_widget.dart';
import 'package:fasila/features/category_details/presentation/view/widget/planting_content_guide_section_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlantGuideContentWidget extends StatelessWidget {
  const PlantGuideContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, int>(
      builder: (context, selectedIndex) {
        print(selectedIndex);
        switch (selectedIndex) {
          case 0:
            return const PlantingContentGuideSectionWidget();
          case 1:
            return const CareContentGuideSectionWidget();
          case 2:
            return const DiseasesContentGuideSectionWidget();
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
