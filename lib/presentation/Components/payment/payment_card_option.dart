import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/models/enums.dart';
import 'package:my_test_app/utilities/constant.dart';

import '../shared/ui_helper.dart';

class PaymentCardOption extends StatefulWidget {
  const PaymentCardOption({Key? key}) : super(key: key);

  @override
  State<PaymentCardOption> createState() => _PaymentCardOptionState();
}

class _PaymentCardOptionState extends State<PaymentCardOption> {
  PaymentCardType? _paymentCardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kExpansionTileColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 28.w, right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'asset/icons/mastercard.png',
                  width: 40.w,
                  height: 31.h,
                ),
                Row(
                  children: [
                    // Text(
                    //   '**** **** 5163',
                    //   style: kNormalBodyStyle.copyWith(
                    //     //color: kTextGreyColor,
                    //     fontSize: 16,
                    //     letterSpacing: 0.1,
                    //   ),
                    // ),
                    Image.asset(
                      'asset/images/card_number.png',
                      width: 124.w,
                      height: 14.h,
                    ),
                    UIHelper.horizontalSpace(15),
                    CustomRadio<PaymentCardType>(
                      value: PaymentCardType.mastercard,
                      groupValue: _paymentCardType,
                      color: primaryColor,
                      onChanged: (PaymentCardType? paymentCardType) {
                        setState(() {
                          _paymentCardType = paymentCardType;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        UIHelper.verticalSpace(15),
        Container(
          height: 69.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kExpansionTileColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 28.w, right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'asset/icons/visa.png',
                  width: 40.w,
                  height: 31.h,
                ),
                Row(
                  children: [
                    // Text(
                    //   '**** **** 5163',
                    //   style: kNormalBodyStyle.copyWith(
                    //     //color: kTextGreyColor,
                    //     fontSize: 16,
                    //     letterSpacing: 0.1,
                    //   ),
                    // ),
                    Image.asset(
                      'asset/images/card_number.png',
                      width: 124.w,
                      height: 14.h,
                    ),
                    UIHelper.horizontalSpace(15),
                    CustomRadio<PaymentCardType>(
                      value: PaymentCardType.visa,
                      groupValue: _paymentCardType,
                      color: primaryColor,
                      onChanged: (PaymentCardType? paymentCardType) {
                        setState(() {
                          _paymentCardType = paymentCardType;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
