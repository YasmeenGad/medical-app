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
          const SliverToBoxAdapter(
            child: CustomHomeAppBar(),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16.r),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ProductItem(index: index);
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

class ProductItem extends StatelessWidget {
  final int index;

  const ProductItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // لو عايزة النص يبدأ من الشمال
      children: [
        Padding(
          padding: EdgeInsets.all(8.r),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.center,
            child: Text(
              'Product',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: MyColors.primaryColor,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: MyColors.primaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            padding: EdgeInsets.all(12.r),
          ),
        ),
      ],
    );
  }
}
