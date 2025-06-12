import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors/my_colors.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer(
      {super.key, required this.borderColor, required this.hintText});

  final Color borderColor;

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      decoration: BoxDecoration(
          color: MyColors.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: borderColor, width: 2.w)),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 20.w),
          hintStyle: TextStyle(color: MyColors.grey),
          hintText: hintText,
        ),
      ),
    );
  }
}
