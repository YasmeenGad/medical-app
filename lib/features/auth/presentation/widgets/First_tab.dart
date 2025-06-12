import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/routes/app_routes.dart';
import 'package:medical_app/core/utils/extension/navigation.dart';

import '../../../../core/utils/widgets/buttons/custom_button.dart';
import 'custom_text_field.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7, // لازم علشان التوسيط
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Column(
              spacing: 20,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextField(text: "Vol name"),
                CustomTextField(text: "Telephone"),
                CustomTextField(text: "E-Mail"),
                CustomTextField(text: "Address"),
                Padding(
                  padding: EdgeInsets.only(top: 58.h),
                  child: Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      text: "Sign Up",
                      onTap: () {
                        context.pushNamed(AppRoutes.login);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
