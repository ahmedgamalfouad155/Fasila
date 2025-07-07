import 'package:fasila/features/fasila_pro/presentation/view/widgets/fasila_pro_view_body.dart';
import 'package:flutter/material.dart';

class FasilaProView extends StatelessWidget {
  const FasilaProView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fasila Pro')),
      body: FasilaProViewBody(),
    );
  }
}