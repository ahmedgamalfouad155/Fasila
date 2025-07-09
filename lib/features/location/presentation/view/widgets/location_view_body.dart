import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/features/location/presentation/view/widgets/custom_location_field_widget.dart';
import 'package:fasila/features/location/presentation/view/widgets/select_location_card_widget.dart';
import 'package:flutter/material.dart';

class LocationViewBody extends StatelessWidget {
  const LocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(AppImages.locationImage),
          SelectLocationCardWidget(), 
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomLocationFieldWidget(hintText: 'Nname'),
                const SizedBox(height: 10),
                CustomLocationFieldWidget(hintText: 'Phone Number'),
                const SizedBox(height: 10),
                CustomLocationFieldWidget(hintText: 'Street Name'),
                const SizedBox(height: 10),
                CustomLocationFieldWidget(hintText: 'City/Region'),
                const SizedBox(height: 10),
                CustomLocationFieldWidget(hintText: 'Floor Number'),
                const SizedBox(height: 10),
                CustomLocationFieldWidget(hintText: 'Covernorate'),
                const SizedBox(height: 20), 
                CustomButon(text: "Save Address", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
