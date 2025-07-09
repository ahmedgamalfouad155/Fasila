import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/features/location/presentation/manager/location_cubit/location_cubit.dart';
import 'package:fasila/features/location/presentation/manager/location_cubit/location_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_drawing_tools/google_maps_drawing_tools.dart';

class SelectLocationViewBody extends StatelessWidget {
  const SelectLocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final locationCubit = BlocProvider.of<LocationCubit>(context);
    return BlocBuilder<LocationCubit, LocationState>(
      bloc: locationCubit,
      builder: (context, state) {
        if (state is LocationLoading || state is LocationInitial) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is LocationLoaded || state is LocationUpdated) {
          return Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: locationCubit.cameraPosition!,
                    markers: locationCubit.markers,
                    onTap: (latlng) => locationCubit.updateMarker(latlng),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CustomButon(
                        text: "Save Address",
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(height: 10),
                      CustomButon(
                        text: "Reset Location",
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        bacgrouncColor: context.appColors.white,
                        textColor: context.appColors.teal,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (state is LocationError) {
          return Center(child: Text(state.message));
        }
        return const SizedBox();
      },
    );
  }
}
