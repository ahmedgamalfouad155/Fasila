// tmv_content.dart
import 'package:fasila/features/camera/presentation/manager/tmvtab_cubit/tmvtab_cubit.dart';
import 'package:fasila/features/camera/presentation/view/widgets/about_disease_content_widget.dart';
import 'package:fasila/features/camera/presentation/view/widgets/health_care_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TMVContent extends StatelessWidget {
  const TMVContent({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.watch<TMVTabCubit>().state;

    return selectedTab == TMVTab.about
        ? const AboutDiseaseContent()
        : const HealthCareContent();
  }
}
