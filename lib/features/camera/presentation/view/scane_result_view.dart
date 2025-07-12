import 'package:fasila/features/camera/presentation/view/widgets/scane_result_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaneResultView extends StatelessWidget {
  const ScaneResultView({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePath = GoRouterState.of(context).extra as String;
    return Scaffold(
      body: SafeArea(child: ScaneResultViewBody(imagePath: imagePath)),
    );
  }
}
