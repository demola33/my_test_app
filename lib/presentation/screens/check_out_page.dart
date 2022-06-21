import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/check_out/order_summary_widget.dart';
import 'package:my_test_app/presentation/screens/payment_page.dart';
import 'package:my_test_app/utilities/constant.dart';

import '../Components/shared/ui_helper.dart';
import '../models/order.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  static String routeName = '/check_out';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(label: 'Checkout'),
              const Text(
                'Order summary',
                style: kNormalBodyStyle,
              ),
              UIHelper.verticalSpace(24),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 300.h),
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        UIHelper.verticalSpaceMedium(),
                    itemBuilder: (context, index) {
                      return OrderSummaryWidget(order: orders[index]);
                    },
                    shrinkWrap: true,
                    itemCount: orders.length,
                  ),
                ),
              ),
              UIHelper.verticalSpace(15),
              const Divider(
                color: kExpansionTileColor,
                thickness: 1.5,
              ),
              UIHelper.verticalSpace(15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: kProfileTitleStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: kCheckOutDarkColor,
                        //fontSize: 16.5,
                        letterSpacing: 0.1,
                      ),
                    ),
                    Text(
                      "NGN ${orders.map((e) => int.parse(e.price?.replaceAll(RegExp(r','), '') ?? '0')).reduce((value, element) => value + element)}",
                      style: kProfileTitleStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kCheckOutDarkColor,
                        //fontSize: 16.5,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(30),
              const Text(
                'Delivery address',
                style: kNormalBodyStyle,
              ),
              UIHelper.verticalSpaceMedium(),
              Container(
                height: 70.h,
                width: 320.w,
                decoration: BoxDecoration(
                  color: kExpansionTileColor,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '32b Oxley Street, Ilaje Lekki Lagos',
                        style: kNormalBodyStyle.copyWith(
                          fontSize: 13.5,
                        ),
                      ),
                      UIHelper.verticalSpace(7),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Change',
                          style: kSmallBodyTextStyle.copyWith(
                            color: primaryColor,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              ActionButton(
                label: 'Payment',
                width: 325,
                onTap: () =>
                    Navigator.of(context).pushNamed(PaymentPage.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
