import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/custom_snak_bar.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/category_details/presentation/manager/add_to_garden_cubit/add_to_garden_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToMyGardenButtonWidget extends StatelessWidget {
  const AddToMyGardenButtonWidget({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    final addToGardenCubit = context.read<AddToGardenCubit>();
    return BlocConsumer<AddToGardenCubit, AddToGardenState>(
      bloc: addToGardenCubit,
      listener: (context, state) {
        if (state is AddToGardenSuccessState) {
          customSnakBar(context, message: "Added to my garden");
        }
      },
      builder: (context, state) {
        if (state is AddToGardenLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is AddToGardenInitial ||
            state is AddToGardenSuccessState) {
          return DefaultButtonWidget(
            text: "Add to my garden",
            onPressed: () {
              addToGardenCubit.addPlanetToGarden(planetModel);
            },
            icon: Icon(Icons.add, color: context.appColors.white),
          );
        } else if (state is AddToGardenFailedState) {
          return Text(state.error);
        } else {
          return Text("error");
        }
      },
    );
  }
}
