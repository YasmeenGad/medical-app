import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors/my_colors.dart';

class CustomTab extends StatelessWidget {
  const CustomTab(
      {super.key,
      required this.label,
      required this.isSelected,
      required this.onTap});

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: onTap,
            child: Text(
              label,
              style: TextStyle(
                color: isSelected ? MyColors.darkBlue : MyColors.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 2,
            width: 40,
            color: isSelected ? MyColors.primaryColor : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
