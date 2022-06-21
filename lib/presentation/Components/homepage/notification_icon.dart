import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/utilities/constant.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.w,
      height: 48.w,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      alignment: Alignment.center,
      child: Image.asset(
        'asset/icons/notification.png',
        height: 22.w,
        width: 21.w,
      ),
    );
  }
}
