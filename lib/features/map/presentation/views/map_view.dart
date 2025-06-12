import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';
import 'package:medical_app/core/utils/extension/media_query_values.dart';
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
            final location = viewModel.currentLatLng;

            return Column(
              children: [
                const CustomMapAppBar(),
                Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 60.h),
                  child: SizedBox(
                    height: context.height * 0.4,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        if (location != null)
                          FlutterMap(
                            options: MapOptions(
                              initialCenter: location,
                              initialZoom: 15,
                            ),
                            children: [
                              TileLayer(
                                urlTemplate:
                                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                                subdomains: const ['a', 'b', 'c'],
                              ),
                              MarkerLayer(
                                markers: [
                                  Marker(
                                    width: 60.w,
                                    height: 60.h,
                                    point: location,
                                    child: Icon(
                                      Icons.location_on,
                                      color: MyColors.darkBlue,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        if (location == null)
                          const Center(
                            child: CircularProgressIndicator(),
                          ),
                      ],
                    ),
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
