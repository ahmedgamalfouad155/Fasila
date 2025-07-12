import 'dart:io';
import 'package:fasila/features/camera/presentation/manager/tmvtab_cubit/tmvtab_cubit.dart';
import 'package:fasila/features/camera/presentation/view/widgets/tmv_content_widget.dart';
import 'package:fasila/features/camera/presentation/view/widgets/toggle_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScaneResultViewBody extends StatelessWidget {
  const ScaneResultViewBody({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TMVTabCubit(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.file(
                  File(imagePath),
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const ToggleButtonsWidget(),
            const SizedBox(height: 20),
            const Expanded(child: SingleChildScrollView(child: TMVContent())),
          ],
        ),
      ),
    );
  }
}
