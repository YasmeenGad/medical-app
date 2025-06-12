import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/routes/app_routes.dart';
import 'package:medical_app/core/utils/extension/navigation.dart';

import '../../../../core/styles/colors/my_colors.dart';
import 'custom_search_container.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h, bottom: 8.h),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              spacing: 8,
              children: [
                GestureDetector(
                  onTap: () {
                    context.pushNamed(AppRoutes.map);
                  },
                  child: Icon(
                    Icons.location_on_outlined,
                    color: MyColors.primaryColor,
                    size: 30.sp,
                  ),
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
            child: const CustomSearchContainer(
              borderColor: MyColors.grey,
              hintText: "doctor/pharmacy/hospital...",),
          )
        ],
      ),
    );
  }
}
