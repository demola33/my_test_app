import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/constant.dart';
import 'ui_helper.dart';

class DropdownListWidget<T> extends StatelessWidget {
  const DropdownListWidget({
    Key? key,
    required this.labelText,
    required this.items,
  }) : super(key: key);

  final String labelText;
  final List<DropdownMenuItem<T>> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: kLabelTextMediumStyle,
        ),
        UIHelper.verticalSpace(8),
        Container(
          height: 54.h,
          width: 130.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: kWhiteShadedColor,
              border: Border.all(color: kLighterGreyColor)),
          child: DropdownButtonFormField<T>(
            items: items,
            //value: 00,
            menuMaxHeight: 200.h,
            hint: Text(
              '00',
              style: kSubtitleStyle.copyWith(
                fontWeight: FontWeight.w400,
                color: kLighterGreyColor,
                fontSize: 18,
              ),
            ),
            style: kSubtitleStyle.copyWith(
              fontWeight: FontWeight.w400,
              color: kLighterGreyColor,
              fontSize: 18,
            ),
            icon: Container(
              padding: EdgeInsets.only(right: 20.w),
              child: const Icon(
                Icons.keyboard_arrow_down_sharp,
                color: kLighterGreyColor,
              ),
            ),
            onChanged: (value) {},
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 30.w),
            ),
          ),
        ),
      ],
    );
  }
}
