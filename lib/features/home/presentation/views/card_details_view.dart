import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';
import 'package:medical_app/core/utils/extension/media_query_values.dart';
import 'package:medical_app/features/home/presentation/widgets/diagnosis_card.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 40.h, left: 32.w, bottom: 16.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_sharp,
                  color: MyColors.darkBlue,
                ),
              ),
            ),
          )),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 32.w, right: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Text(
                    "12.06.2023 / 15:30",
                    style: TextStyle(color: MyColors.primaryColor),
                  ),
                  Text(
                    "Dr.Mohamed Essam",
                    style: TextStyle(color: MyColors.primaryColor),
                  ),
                  Text(
                    "Family Doctor",
                    style: TextStyle(
                        color: MyColors.darkBlue, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  DiagnosisCard(
                    text: "Diagnosis",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  DiagnosisCard(
                    text: "Prescription",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
