import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/shared/ui_helper.dart';
import 'package:my_test_app/presentation/models/activity.dart';
import 'package:my_test_app/utilities/constant.dart';
import 'package:my_test_app/utilities/reusable_methods.dart';

class ActivityTile extends StatelessWidget {
  const ActivityTile({
    Key? key,
    required Activity activity,
  })  : _activity = activity,
        super(key: key);

  final Activity _activity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 60.w,
        height: 55.h,
        decoration: BoxDecoration(
          color: kWhiteColor,
          image: DecorationImage(
            image: AssetImage(_activity.logoUrl),
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        //child: _retailer.logo,
      ),
      title: Text(
        _activity.title,
        style: kListTileTextStyle,
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Text(
          formatDate(_activity.date),
          style: kSubtitleStyle,
        ),
      ),
      trailing: SizedBox(
        width: 100.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                if (_activity.price.isNegative)
                  Image.asset(
                    'asset/icons/minus.png',
                    color: Colors.black,
                  ),
                Image.asset(
                  'asset/icons/naira.png',
                  width: 12.w,
                  height: 12.w,
                  color: Colors.black,
                ),
              ],
            ),
            UIHelper.horizontalSpace(3),
            Text(
              formatPrice(_activity.price.abs()),
              style: kListTileTextStyle,
            ),
          ],
        ),
      ),
      //dense: true,
    );
  }
}
