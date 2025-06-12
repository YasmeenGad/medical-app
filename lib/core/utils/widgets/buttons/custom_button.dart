import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/colors/my_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 120.w,
        decoration: BoxDecoration(
          color: MyColors.darkBlue,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: MyColors.whiteColor),
        )),
      ),
    );
  }
}
