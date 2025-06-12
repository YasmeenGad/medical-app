import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/utils/extension/media_query_values.dart';

import '../../../../core/styles/colors/my_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Card(
        color: MyColors.whiteColor,
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          child: Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "12.06.2023 / 15:30",
                style: TextStyle(color: MyColors.primaryColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Family Doctor",
                    style: TextStyle(
                        color: MyColors.darkBlue, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: MyColors.primaryColor,
                  )
                ],
              ),
              Text(
                "Dr.Mohamed Essam",
                style: TextStyle(color: MyColors.primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
