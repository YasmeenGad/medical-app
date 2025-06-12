import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
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
                    child: Container(
                      height: 30.h,
                      decoration: BoxDecoration(color: MyColors.whiteColor),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
