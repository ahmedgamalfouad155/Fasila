import 'package:fasila/core/widgets/custom_titil_and_logos_app_bar.dart';
import 'package:fasila/features/fasila_pro/presentation/view/widgets/fasila_pro_view_body.dart';
import 'package:flutter/material.dart';

class FasilaProView extends StatelessWidget {
  const FasilaProView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customTitleAndLogoosAppBar(title: 'Fasila Pro', context: context),
      body: FasilaProViewBody(),
    );
  }
}