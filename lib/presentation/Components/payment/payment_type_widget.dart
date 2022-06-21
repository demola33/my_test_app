import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/models/enums.dart';
import 'package:my_test_app/utilities/constant.dart';

import '../shared/ui_helper.dart';

class PaymentTypeWidget extends StatefulWidget {
  const PaymentTypeWidget({
    Key? key,
    required this.triggerCardSelection,
  }) : super(key: key);

  final void Function(bool value) triggerCardSelection;

  @override
  State<PaymentTypeWidget> createState() => _PaymentTypeWidgetState();
}

class _PaymentTypeWidgetState extends State<PaymentTypeWidget> {
  PaymentMethod? _paymentmethod;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: kExpansionTileColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 28.w, right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'asset/icons/wallet.png',
                      width: 23.w,
                      height: 20.h,
                    ),
                    UIHelper.horizontalSpace(25),
                    Text(
                      'Wallet',
                      style: kNormalBodyStyle.copyWith(
                        //color: kTextGreyColor,
                        fontSize: 16,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'NGN 22,000',
                      style: kProfileTitleStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kCheckOutDarkColor,
                        fontSize: 15,
                        //letterSpacing: 0.1,
                      ),
                    ),
                    UIHelper.horizontalSpaceSmall(),
                    CustomRadio<PaymentMethod>(
                      value: PaymentMethod.wallet,
                      groupValue: _paymentmethod,
                      color: primaryColor,
                      onChanged: (PaymentMethod? paymentmethod) {
                        widget.triggerCardSelection(false);
                        setState(() {
                          _paymentmethod = paymentmethod;
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
                Row(
                  children: [
                    Image.asset(
                      'asset/icons/atm_card.png',
                      width: 23.w,
                      height: 26.h,
                    ),
                    UIHelper.horizontalSpace(15),
                    Text(
                      'Card',
                      style: kButtonTextStyle.copyWith(
                        color: kTextGreyColor,
                        fontSize: 16,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
                CustomRadio<PaymentMethod>(
                  value: PaymentMethod.card,
                  groupValue: _paymentmethod,
                  color: primaryColor,
                  onChanged: (PaymentMethod? paymentmethod) {
                    widget.triggerCardSelection(true);
                    setState(() {
                      _paymentmethod = paymentmethod;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
