import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/styles/colors/my_colors.dart';
import 'package:medical_app/features/home/presentation/widgets/custom_search_container.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 40.0, bottom: 8.0),
              child: Column(
                spacing: 16,
                children: [
                  Row(children: [
                    Expanded(
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new_sharp,
                                color: MyColors.darkBlue,
                                size: 30.sp,
                              )),
                          Icon(
                            Icons.location_on_outlined,
                            color: MyColors.darkBlue,
                            size: 30.sp,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: CustomSearchContainer(
                          borderColor: MyColors.darkBlue!,
                          hintText: "Current location",
                        )),
                  ]),
                  Row(children: [
                    Expanded(
                      child: SizedBox(),
                    ),
                    Expanded(
                        flex: 3,
                        child: CustomSearchContainer(
                          borderColor: MyColors.grey,
                          hintText: "enter your location",
                        )),
                  ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
