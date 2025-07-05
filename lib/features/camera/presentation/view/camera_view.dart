import 'package:fasila/features/camera/presentation/manager/camera_cubit/camera_cubit.dart';
import 'package:fasila/features/camera/presentation/view/widgets/camera_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CameraCubit(),
        child: CameraViewBody(),
      ),
    );
  }
}
