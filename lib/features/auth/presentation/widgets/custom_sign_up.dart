import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';

import 'First_tab.dart';

class CustomSignUp extends StatelessWidget {
  const CustomSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: TabBar(
          indicatorColor: MyColors.primaryColor,
          labelColor: MyColors.primaryColor,
          unselectedLabelColor: MyColors.primaryColor,
          dividerColor: Colors.transparent,
          tabs: const [
            Tab(
                icon: Icon(
              Icons.accessibility_new,
              size: 35,
            )),
            Tab(
                icon: Icon(
              Icons.local_hospital,
              size: 35,
            )),
            Tab(
                icon: Icon(
              Icons.local_pharmacy,
              size: 35,
            )),
            Tab(
                icon: Icon(
              Icons.medication,
              size: 35,
            )),
          ],
        ),
        body: TabBarView(
          children: [
            FirstTab(),
            FirstTab(),
            FirstTab(),
            FirstTab(),
          ],
        ),
      ),
    );
  }
}
