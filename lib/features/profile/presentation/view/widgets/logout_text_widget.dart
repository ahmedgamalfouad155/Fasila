import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LogoutTextWidget extends StatelessWidget {
  const LogoutTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authcubit = BlocProvider.of<AuthCubit>(context);
    return BlocBuilder<AuthCubit, AuthState>(
      bloc: authcubit,
      builder: (context, state) {
        if (state is LoginSuccessState || state is SignupSuccessState) {
          return InkWell(
            onTap: () async {
              (context).go(AppRouter.kAuthLandingView);
              await authcubit.logout();
            },
            child: Row(
              children: [
                const SizedBox(width: 10),
                Icon(Icons.logout, color: Colors.red),
                const SizedBox(width: 10),
                Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          );
        } else if (state is AuthInitial) {
          return SizedBox.shrink();
        } else {
          return const Text("Error in logout");
        }
      },
    );
  }
}
