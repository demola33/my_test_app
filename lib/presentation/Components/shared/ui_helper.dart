import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/constant.dart';
import '../homepage/reusable_container.dart';

class UIHelper {
  //Vertical spacing.
  static final double _verticalSpaceSmall = 10.0.h;
  static final double _verticalSpaceMedium = 20.0.h;
  static final double _verticalSpaceLarge = 50.0.h;

  //Horizontal spacing.
  static final double _horizontalSpaceSmall = 10.0.w;
  static final double _horizontalSpaceMedium = 20.0.w;
  static final double _horizontalSpaceLarge = 50.0.w;

  ///Returns a vertical space with height set  to [height] supplied
  static Widget verticalSpace(double height) => Container(height: height.h);

  ///Returns a vertical space with height set  to [_verticalSpaceSmall]
  static Widget verticalSpaceSmall() => verticalSpace(_verticalSpaceSmall);

  ///Returns a vertical space with height set  to [_verticalSpaceMedium]
  static Widget verticalSpaceMedium() => verticalSpace(_verticalSpaceMedium);

  ///Returns a vertical space with height set  to [_verticalSpaceLarge]
  static Widget verticalSpaceLarge() => verticalSpace(_verticalSpaceLarge);

  ///Returns a horizontal space with width set  to [width] supplied
  static Widget horizontalSpace(double width) => Container(width: width.w);

  ///Returns a horizontal space with width set  to [_horizontalSpaceSmall]
  static Widget horizontalSpaceSmall() =>
      horizontalSpace(_horizontalSpaceSmall);

  ///Returns a horizontal space with width set  to [_horizontalSpaceMedium]
  static Widget horizontalSpaceMedium() =>
      horizontalSpace(_horizontalSpaceMedium);

  ///Returns a horizontal space with width set  to [_horizontalSpaceLarge]
  static Widget horizontalSpaceLarge() =>
      horizontalSpace(_horizontalSpaceLarge);

  static double width(BuildContext context, [double division = 1]) =>
      MediaQuery.of(context).size.width;

  static double height(BuildContext context, [double division = 1]) =>
      MediaQuery.of(context).size.height;
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    this.onTap,
    this.width,
    required this.label,
  }) : super(key: key);

  final String label;
  final void Function()? onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: ReusableContainer(
          label: label,
          containerColor: primaryColor,
          height: 60.h,
          width: width?.w ?? 160.w,
          borderRadius: 16.r,
          textStyle: kButtonTextStyle,
          labelColor: kWhiteColor,
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Padding(
        padding: EdgeInsets.only(top: 20.h, bottom: 50.h),
        child: Row(
          children: [
            Image.asset(
              'asset/icons/back_button.png',
              width: 45.w,
              height: 45.w,
            ),
            UIHelper.horizontalSpace(25),
            Text(
              label,
              style: kProfileTitleStyle.copyWith(
                color: kDarkColor,
                fontSize: 23,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRadio<T> extends StatelessWidget {
  const CustomRadio({
    Key? key,
    required this.value,
    this.onChanged,
    this.groupValue,
    this.color,
  }) : super(key: key);

  final T value;
  final T? groupValue;
  final Color? color;
  final void Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data:
          Theme.of(context).copyWith(unselectedWidgetColor: kLighterGreyColor),
      child: Radio<T>(
        value: value,
        groupValue: groupValue,
        toggleable: true,
        activeColor: color ?? kWhiteColor,
        onChanged: onChanged,
      ),
    );
  }
}

class AddWidget extends StatelessWidget {
  const AddWidget({
    Key? key,
    required this.onTap,
    required this.label,
  }) : super(key: key);
  final void Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, left: 6.w),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            const Icon(
              Icons.add,
              color: primaryColor,
            ),
            UIHelper.horizontalSpace(7),
            Text(
              label,
              style: kLabelTextStyle.copyWith(
                color: primaryColor,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
