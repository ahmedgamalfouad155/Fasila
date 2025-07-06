import 'package:fasila/features/camera/presentation/view/widgets/scane_result_view_body.dart';
import 'package:flutter/material.dart';

class ScaneResultView extends StatelessWidget {
  const ScaneResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ScaneResultViewBody()));
  }
}
