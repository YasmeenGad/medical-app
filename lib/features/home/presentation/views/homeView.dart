import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/routes/app_routes.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';
import 'package:medical_app/core/utils/extension/navigation.dart';
import 'package:medical_app/features/home/presentation/widgets/custom_chip.dart';
import 'package:medical_app/features/home/presentation/widgets/custome_filtered_product.dart';

import '../widgets/custom_home_app_bar.dart';
import '../widgets/custom_product_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String? selectedFilter;

  void updateFilter(String? filter) {
    setState(() {
      selectedFilter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> allItems = List.generate(20, (index) => 'Item $index');
    final filteredItems = selectedFilter == null
        ? allItems
        : allItems.where((e) => true).toList();

    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomHomeAppBar(
              selectedFilter: selectedFilter,
              onFilterSelected: updateFilter,
            ),
          ),
          if (selectedFilter != null)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Row(
                    children: [
                      CustomChip(
                        label: selectedFilter!,
                        onDeleted: () => updateFilter(null),
                      )
                    ],
                  ),
                ]),
              ),
            ),
          if (selectedFilter != null)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoutes.doctorDetails);
                      },
                      child: const CustomFilteredProduct()),
                  childCount: filteredItems.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.w,
                  childAspectRatio: 0.75,
                ),
              ),
            )
          else
            SliverPadding(
              padding: EdgeInsets.all(16.r),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return const ProductItem();
                  },
                  childCount: filteredItems.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.w,
                  childAspectRatio: 0.75,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
