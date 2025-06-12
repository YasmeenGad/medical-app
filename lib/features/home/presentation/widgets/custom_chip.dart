import 'package:flutter/material.dart';

import '../../../../core/styles/colors/my_colors.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.label,
    this.isDeleted = true,
    this.onDeleted,
  });

  final String label;
  final bool? isDeleted;
  final VoidCallback? onDeleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Chip(
        label: Text(
          label,
          textAlign: TextAlign.center,
        ),
        backgroundColor: MyColors.whiteColor,
        deleteIcon: isDeleted == true ? const Icon(Icons.close) : null,
        onDeleted: isDeleted == true ? onDeleted : null,
      ),
    );
  }
}
