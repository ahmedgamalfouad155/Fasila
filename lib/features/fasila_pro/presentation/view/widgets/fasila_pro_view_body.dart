import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/fasila_pro/presentation/manager/fasila_pro_cubit/fasila_pro_cubit.dart';
import 'package:fasila/features/fasila_pro/presentation/view/widgets/togel_upgrade_plane_button_widget.dart';
import 'package:fasila/features/fasila_pro/presentation/view/widgets/upgrade_plan_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FasilaProViewBody extends StatelessWidget {
  const FasilaProViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocProvider(
        create: (context) => FasilaProCubit(),
        child: Column(
          children: [
            TogelUpgradePlaneButtonWidget(),
            const SizedBox(height: 10),
            Divider(color: context.appColors.teal, thickness: 2, height: 0),
            const SizedBox(height: 10),
            UpgradePlanContentWidget(),
          ],
        ),
      ),
    );
  }
}
