import 'package:flutter/material.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';

import '../widgets/custom_map_app_bar.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: const CustomMapAppBar(),
          )
        ],
      ),
    );
  }
}
