import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/utils/extension/media_query_values.dart';

import '../../../../core/styles/colors/my_colors.dart';

class DiagnosisCard extends StatelessWidget {
  const DiagnosisCard({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(color: MyColors.primaryColor),
        ),
        SizedBox(
          width: context.width,
          child: Card(
            color: MyColors.whiteColor,
            elevation: 2,
            child: Padding(
              padding: EdgeInsets.all(12.r),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
