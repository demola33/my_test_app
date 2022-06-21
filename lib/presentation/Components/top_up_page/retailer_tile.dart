import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/shared/ui_helper.dart';
import 'package:my_test_app/presentation/models/retailer.dart';
import 'package:my_test_app/utilities/constant.dart';

class RetailerTile extends StatelessWidget {
  const RetailerTile({
    Key? key,
    required Retailer retailer,
    required this.tileColor,
  })  : _retailer = retailer,
        super(key: key);

  final Retailer _retailer;
  final Color tileColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 325.w,
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: kLighterGreyColor),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 60.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    image: DecorationImage(
                      image: AssetImage(_retailer.logoUrl),
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  //child: _retailer.logo,
                ),
                UIHelper.horizontalSpaceMedium(),
                Text(
                  _retailer.title,
                  style: kButtonTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Icon(
              Icons.chevron_right,
              color: kWhiteColor,
            )
          ],
        ),
      ),
    );
  }
}
