import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/homepage/indicators.dart';
import 'package:my_test_app/presentation/Components/shared/ui_helper.dart';

import '../../../utilities/constant.dart';
import 'reusable_container.dart';

class CenterCardWithIndicators extends StatelessWidget {
  const CenterCardWithIndicators({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 145.h, left: 31.5.w),
          child: Container(
            height: 190.h,
            width: 327.w,
            padding: EdgeInsets.all(20.r),
            decoration: BoxDecoration(
                color: kCenterCardColor,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8.h),
                    color: kGreyColor,
                    blurRadius: 3.r,
                  )
                ]),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableContainer(label: 'Cylinder ID: #62'),
                    UIHelper.verticalSpaceSmall(),
                    RichText(
                      text: TextSpan(
                        text: '25',
                        style: kLargeTitleStyle,
                        children: [
                          TextSpan(
                            text: 'kg',
                            style: kSmallBodyTextStyle.copyWith(
                              color: kWhiteColor,
                              fontSize: 19,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ReusableContainer(
                      label: 'Last purchase was 2 hours ago',
                      width: 160.w,
                      labelColor: primaryColor,
                    )
                  ],
                ),
                UIHelper.horizontalSpace(40),
                SizedBox(
                  height: 135.h,
                  width: 71.w,
                  child: Image.asset('asset/images/cylinder.png'),
                )
              ],
            ),
          ),
        ),
        const Indicators()
      ],
    );
  }
}
