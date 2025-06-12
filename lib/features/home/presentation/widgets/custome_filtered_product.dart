import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors/my_colors.dart';

class CustomFilteredProduct extends StatelessWidget {
  const CustomFilteredProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120.h,
          width: 150.w,
          decoration: BoxDecoration(
              border: Border.all(color: MyColors.primaryColor),
              borderRadius: BorderRadius.circular(10.r),
              color: MyColors.whiteColor),
          child: Center(
            child: Icon(
              Icons.local_hospital_outlined,
              color: MyColors.primaryColor,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mohamed Ahmed",
              style: TextStyle(color: MyColors.primaryColor),
            ),
            Text(
              "Internist",
              style: TextStyle(color: MyColors.primaryColor),
            ),
            Row(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: MyColors.primaryColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
