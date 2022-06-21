import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/screens/home_page.dart';
import 'package:my_test_app/utilities/constant.dart';

import '../Components/shared/ui_helper.dart';

class SuccessfulPage extends StatelessWidget {
  const SuccessfulPage({Key? key}) : super(key: key);

  static String routeName = '/successful';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 170.w,
                width: 170.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                padding: EdgeInsets.all(50.r),
                child: Image.asset(
                  'asset/icons/success.png',
                  width: 75.w,
                  height: 75.w,
                ),
              ),
              UIHelper.verticalSpaceLarge(),
              Text(
                'Order booked',
                textAlign: TextAlign.center,
                style: kProfileTitleStyle.copyWith(
                  color: kDarkColor,
                  fontSize: 23,
                ),
              ),
              UIHelper.verticalSpace(5),
              Text(
                'successfully',
                textAlign: TextAlign.center,
                style: kProfileTitleStyle.copyWith(
                  color: kDarkColor,
                  fontSize: 23,
                ),
              ),
              UIHelper.verticalSpace(35),
              ActionButton(
                label: 'Home',
                width: 325,
                onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    MyHomePage.routeName, (route) => false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
