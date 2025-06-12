import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';
import 'package:medical_app/features/auth/presentation/widgets/custom_text_field.dart';

class CustomLogin extends StatelessWidget {
  const CustomLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.7,
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              text: "user name",
            ),
            CustomTextField(text: "password"),
          ],
        ),
      ),
    ));
  }
}
