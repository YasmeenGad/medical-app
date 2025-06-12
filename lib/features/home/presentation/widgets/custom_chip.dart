import 'package:flutter/material.dart';

import '../../../../core/styles/colors/my_colors.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.label,
    this.isDeleted = true,
    this.onDeleted,
    this.textColor,
    this.borderColor,
  });

  final String label;
  final bool? isDeleted;
  final VoidCallback? onDeleted;
  final Color? textColor, borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Chip(
        label: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor ?? MyColors.primaryColor),
        ),
        shape: StadiumBorder(
            side: BorderSide(color: borderColor ?? MyColors.primaryColor)),
        backgroundColor: MyColors.whiteColor,
        deleteIcon: isDeleted == true
            ? const Icon(
                Icons.close,
                color: MyColors.primaryColor,
              )
            : null,
        onDeleted: isDeleted == true ? onDeleted : null,
      ),
    );
  }
}
