import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors/my_colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
