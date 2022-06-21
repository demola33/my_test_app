import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/shared/ui_helper.dart';
import 'package:my_test_app/presentation/screens/delivery_address_page.dart';
import 'package:my_test_app/utilities/constant.dart';

import '../Components/purchase_order_page/purchase_expansion_tile.dart';
import '../models/order.dart';

class PurchaseOrderPage extends StatefulWidget {
  const PurchaseOrderPage({Key? key}) : super(key: key);

  static String routeName = '/purchase_order';

  @override
  State<PurchaseOrderPage> createState() => _PurchaseOrderPageState();
}

class _PurchaseOrderPageState extends State<PurchaseOrderPage> {
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
              const CustomAppBar(label: 'Purchase Order'),
              const Text(
                'Select your order preference',
                style: kNormalBodyStyle,
              ),
              UIHelper.verticalSpace(24),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 470.h),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return PurchaseExpansionTile(order: orders[index]);
                    },
                    shrinkWrap: true,
                    itemCount: orders.length,
                  ),
                ),
              ),
              AddWidget(
                label: 'Add order',
                onTap: () {
                  setState(() {
                    orders.add(Order(orderID: orders.length + 1));
                  });
                },
              ),
              const Spacer(),
              ActionButton(
                label: 'Continue',
                width: 325,
                onTap: () => Navigator.of(context)
                    .pushNamed(DeliveryAddressPage.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
