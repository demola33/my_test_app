import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/delivery_address_page/address_tile.dart';
import 'package:my_test_app/presentation/models/address.dart';
import 'package:my_test_app/presentation/screens/check_out_page.dart';
import 'package:my_test_app/utilities/constant.dart';

import '../Components/shared/ui_helper.dart';

class DeliveryAddressPage extends StatelessWidget {
  const DeliveryAddressPage({Key? key}) : super(key: key);

  static String routeName = '/delivery_address';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(label: 'Delivery Address'),
              const Text(
                'Select delivery address',
                style: kNormalBodyStyle,
              ),
              UIHelper.verticalSpace(24),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 500.h),
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        UIHelper.verticalSpace(15),
                    itemBuilder: (context, index) {
                      return AddressTile(
                        address: addresses[index],
                      );
                    },
                    shrinkWrap: true,
                    itemCount: addresses.length,
                  ),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              AddWidget(
                label: 'Add address',
                onTap: () {},
              ),
              const Spacer(),
              ActionButton(
                label: 'Checkout',
                width: 325,
                onTap: () =>
                    Navigator.of(context).pushNamed(CheckOutPage.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
