import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors/my_colors.dart';
import 'custom_search_container.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              spacing: 8,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: MyColors.primaryColor,
                  size: 30.sp,
                ),
                Icon(
                  Icons.filter_alt_outlined,
                  color: MyColors.primaryColor,
                  size: 30.sp,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: const CustomSearchContainer(),
          )
        ],
      ),
    );
  }
}
