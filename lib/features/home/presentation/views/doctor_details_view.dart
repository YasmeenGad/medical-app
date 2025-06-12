import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/routes/app_routes.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';
import 'package:medical_app/core/utils/extension/navigation.dart';
import 'package:medical_app/features/home/presentation/widgets/custom_chip.dart';

import '../widgets/custom_card.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              spacing: 20,
              children: [
                Row(
                  spacing: 32.w,
                  children: [
                    CustomChip(
                      label: "Previous",
                    ),
                    CustomChip(
                      label: "Upcoming",
                      textColor: MyColors.grey,
                      borderColor: MyColors.grey,
                    ),
                  ],
                ),
                ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoutes.cardDetails);
                      },
                      child: const CustomCard()),
                  itemCount: 3,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
