import 'package:fasila/features/auth/presentation/manager/password_cubit.dart';
import 'package:fasila/features/auth/presentation/view/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => PasswordVisibilityCubit(),
        child: SignupViewBody(),
      ),
    );
  }
}
