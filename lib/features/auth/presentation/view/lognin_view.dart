import 'package:fasila/features/auth/presentation/manager/password_cubit.dart';
import 'package:fasila/features/auth/presentation/view/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogniView extends StatelessWidget {
  const LogniView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => PasswordVisibilityCubit(),
          child: LoginViewBody(),
        ),
      ),
    );
  }
}
