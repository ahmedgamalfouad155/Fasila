import 'package:fasila/features/fasila_pro/presentation/manager/fasila_pro_cubit/fasila_pro_cubit.dart';
import 'package:fasila/features/fasila_pro/presentation/view/widgets/monthly_content_widget.dart';
import 'package:fasila/features/fasila_pro/presentation/view/widgets/yearly_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpgradePlanContentWidget extends StatelessWidget {
  const UpgradePlanContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.watch<FasilaProCubit>().state;

    return selectedTab == FasilaProTogelTap.monthly
        ? const MonthlyContentWidget()
        : const YearlyContentWidget();
  }
}
