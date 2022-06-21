import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/constant.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    Key? key,
    required this.label,
    this.width = 100,
    this.height = 22,
    this.borderRadius,
    this.textStyle,
    this.labelColor,
    this.containerColor,
  }) : super(key: key);

  final String label;
  final double width;
  final double height;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Color? labelColor;
  final Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius?.r ?? 8),
        color: containerColor ?? kWhiteCardColor.withOpacity(0.5),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: textStyle ?? kSmallBodyTextStyle.copyWith(color: labelColor),
      ),
    );
  }
}
