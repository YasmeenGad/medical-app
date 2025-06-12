import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';
import 'package:provider/provider.dart';

import '../viewModel/map_view_model.dart';
import '../widgets/custom_map_app_bar.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MapViewModel()..fetchCurrentLocation(),
      child: Scaffold(
        backgroundColor: MyColors.whiteColor,
        body: Consumer<MapViewModel>(
          builder: (context, viewModel, child) {
            final currentLocation = viewModel.currentLocation;
            return Stack(
              children: [
                if (currentLocation != null)
                  GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: currentLocation,
                      zoom: 15,
                    ),
                    myLocationEnabled: true,
                    myLocationButtonEnabled: false,
                    onMapCreated: viewModel.setMapController,
                  )
                else
                  Center(
                      child: CircularProgressIndicator(
                    color: MyColors.darkBlue!,
                  )),
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CustomMapAppBar(),
                ),
                Positioned(
                  bottom: 30,
                  right: 20,
                  child: FloatingActionButton.small(
                    backgroundColor: Colors.white,
                    onPressed: viewModel.goToCurrentLocation,
                    child: const Icon(Icons.my_location, color: Colors.black),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
