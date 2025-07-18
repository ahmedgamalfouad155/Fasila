import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/category_details/presentation/view/widget/description_category_details_widget.dart';
import 'package:fasila/features/category_details/presentation/view/widget/details_option_widget.dart';
import 'package:fasila/features/category_details/presentation/view/widget/image_category_details_widget.dart';
import 'package:fasila/features/category_details/presentation/view/widget/planet_guide_button_togel_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryDetailsViewBody extends StatelessWidget {
  const CategoryDetailsViewBody({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) { 
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Scaffold(
        bottomNavigationBar: DefaultButtonWidget(
          text: "Add to my garden",
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds: 1),
                content: Text('Added to my garden'),
                backgroundColor: context.appColors.teal,
              ),
            );
          },
          icon: Icon(Icons.add, color: context.appColors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageCategoryDetailsWidget( planetModel: planetModel),
              const SizedBox(height: 10),
              DescriptionCategoryDetailsWidget( planetModel: planetModel),
              const SizedBox(height: 10),
              DetailsOptionWidget( planetModel: planetModel),
              const SizedBox(height: 10),
              BlocProvider(
                create: (context) => FilterCubit(),
                child: PlanetGuideButtonTogelWidget(),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
