import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/location/presentation/manager/location_cubit/location_cubit.dart';
import 'package:fasila/features/location/presentation/view/widgets/select_location_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectLocationView extends StatelessWidget {
  const SelectLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location', style: AppStyles.textStyle16Teal(context)),
      ),
      body: BlocProvider(
        create: (context) => LocationCubit()..initLocation(),
        child: SelectLocationViewBody(),
      ),
    );
  }
}
