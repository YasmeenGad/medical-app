import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';

import '../widgets/custom_home_app_bar.dart';
import '../widgets/custom_search_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: const CustomHomeAppBar(),
          ),
          SliverList(delegate: delegate)
        ],
      ),
    );
  }
}
