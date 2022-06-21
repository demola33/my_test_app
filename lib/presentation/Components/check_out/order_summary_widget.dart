import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/utilities/constant.dart';

import '../../models/order.dart';
import '../shared/ui_helper.dart';

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({
    Key? key,
    required Order order,
  })  : _order = order,
        super(key: key);

  final Order _order;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 325.w,
      decoration: BoxDecoration(
        color: kExpansionTileColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order ${_order.orderID}',
                  style: kListTileTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                    color: kCheckOutDarkColor,
                  ),
                ),
                UIHelper.verticalSpace(5),
                Text(
                  orderTypeData[_order.orderType] ?? 'No type selected',
                  style: kLabelTextMediumStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.5,
                    color: kTextGreyColor,
                  ),
                ),
                UIHelper.verticalSpace(4),
                Row(
                  children: [
                    Text(
                      '${_order.cylinderWeight ?? '0'}Kg',
                      style: kLabelTextMediumStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        color: kTextGreyColor,
                      ),
                    ),
                    Container(
                      height: 7.w,
                      width: 7.w,
                      margin: EdgeInsets.symmetric(horizontal: 5.w),
                      decoration: const BoxDecoration(
                        color: kTextGreyColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text(
                      '${_order.quantity ?? '0'} Qty',
                      style: kLabelTextMediumStyle,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'NGN ${_order.price ?? '0'}',
              style: kProfileTitleStyle.copyWith(
                fontWeight: FontWeight.w600,
                color: kCheckOutDarkColor,
                fontSize: 16.5,
                letterSpacing: 0.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
