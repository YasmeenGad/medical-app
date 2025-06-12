import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';

import '../widgets/custom_home_app_bar.dart';
import '../widgets/custom_product_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomHomeAppBar(),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16.r),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ProductItem();
                },
                childCount: 20,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.w,
                  childAspectRatio: 0.75),
            ),
          ),
        ],
      ),
    );
  }
}
