import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/routes/app_routes.dart';
import 'package:medical_app/core/utils/extension/navigation.dart';
import 'package:medical_app/features/home/presentation/widgets/custom_chip.dart';

import '../../../../core/styles/colors/my_colors.dart';
import 'custom_search_container.dart';

class CustomHomeAppBar extends StatefulWidget {
  const CustomHomeAppBar(
      {super.key, this.onFilterSelected, this.selectedFilter});

  final Function(String)? onFilterSelected;
  final String? selectedFilter;

  @override
  State<CustomHomeAppBar> createState() => _CustomHomeAppBarState();
}

class _CustomHomeAppBarState extends State<CustomHomeAppBar> {
  OverlayEntry? _overlayEntry;

  void _toggleOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    } else {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    }
    setState(() {}); // to trigger rebuild if needed
  }

  Widget _buildFilterChip(String label) {
    return GestureDetector(
      onTap: () {
        widget.onFilterSelected?.call(label);
        _toggleOverlay(); // close overlay
      },
      child: CustomChip(label: label),
    );
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: 90.h,
        left: 20.w,
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(12),
            width: 150.w,
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.primaryColor),
              color: MyColors.whiteColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFilterChip('Doctor'),
                SizedBox(height: 8),
                _buildFilterChip('Pharmacy'),
                SizedBox(height: 8),
                _buildFilterChip('Hospital'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h, bottom: 8.h),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.pushNamed(AppRoutes.map);
                  },
                  child: Icon(
                    Icons.location_on_outlined,
                    color: MyColors.primaryColor,
                    size: 30.sp,
                  ),
                ),
                SizedBox(width: 12.w),
                GestureDetector(
                  onTap: _toggleOverlay,
                  child: Icon(
                    Icons.filter_alt_outlined,
                    color: MyColors.primaryColor,
                    size: 30.sp,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: const CustomSearchContainer(
              borderColor: MyColors.grey,
              hintText: "doctor/pharmacy/hospital...",
              hintTextColor: MyColors.grey,
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }
}
