import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/top_up_page/retailer_tile.dart';
import 'package:my_test_app/presentation/models/retailer.dart';
import 'package:my_test_app/presentation/screens/home_page.dart';
import 'package:my_test_app/presentation/screens/purchase_order_page.dart';
import 'package:my_test_app/utilities/constant.dart';

import '../Components/shared/ui_helper.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({Key? key}) : super(key: key);

  static String routeName = '/top-up';

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
              const CustomAppBar(label: 'Top Up'),
              const Text(
                'Select Retailer you wish to purchase from',
                style: kNormalBodyStyle,
              ),
              UIHelper.verticalSpace(30),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: SizedBox(
                  height: 600.h,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final Retailer retailer = retailers[index];
                      return GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(PurchaseOrderPage.routeName),
                        child: RetailerTile(
                          retailer: retailer,
                          tileColor: index.isOdd ? primaryColor : kDarkColor,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        UIHelper.verticalSpace(15),
                    itemCount: retailers.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
