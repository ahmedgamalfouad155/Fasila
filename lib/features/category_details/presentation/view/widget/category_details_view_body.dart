import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/category_details/presentation/view/widget/description_category_details_widget.dart';
import 'package:fasila/features/category_details/presentation/view/widget/details_option_widget.dart';
import 'package:fasila/features/category_details/presentation/view/widget/image_category_details_widget.dart';
import 'package:fasila/features/category_details/presentation/view/widget/planet_guide_button_togel_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryDetailsViewBody extends StatelessWidget {
  const CategoryDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 8, right: 8),
        child: Column(
          children: [
            ImageCategoryDetailsWidget(),
            const SizedBox(height: 10),
            DescriptionCategoryDetailsWidget(),
            const SizedBox(height: 10),
            DetailsOptionWidget(),
            const SizedBox(height: 10),
            BlocProvider(
              create: (context) => FilterCubit(),
              child: PlanetGuideButtonTogelWidget(),
            ),
            const SizedBox(height: 10),
            DefaultButtonWidget(
              text: "Add to my garden",
              onPressed: () {},
              icon: Icon(Icons.add, color: context.appColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
