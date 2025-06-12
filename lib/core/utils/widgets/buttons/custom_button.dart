import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/colors/my_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 120.w,
      decoration: BoxDecoration(
        color: MyColors.darkBlue,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
          child: Text(
        "Login",
        style: TextStyle(color: MyColors.whiteColor),
      )),
    );
  }
}
