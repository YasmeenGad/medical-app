import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';
import 'package:medical_app/features/auth/presentation/widgets/custom_tab.dart';

import '../widgets/custom_login.dart';
import '../widgets/custom_sign_up.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isLoginSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.whiteColor,
        appBar: AppBar(
          elevation: 0,
          // Remove AppBar shadow
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.medication,
            color: MyColors.primaryColor,
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(16.h),
            child: Container(
              color: MyColors.primaryColor,
              height: 2.h,
            ),
          ),
          actions: [
            CustomTab(
                label: "Login",
                isSelected: isLoginSelected,
                onTap: () {
                  setState(() {
                    isLoginSelected = true;
                  });
                }),
            CustomTab(
                label: "Sign Up",
                isSelected: !isLoginSelected,
                onTap: () {
                  setState(() {
                    isLoginSelected = false;
                  });
                }),
            SizedBox(
              width: 8.w,
            ),
          ],
        ),
        body: isLoginSelected
            ? const CustomLogin()
            : Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: CustomSignUp(),
              ));
  }
}
