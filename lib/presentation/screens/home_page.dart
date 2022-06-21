import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/homepage/activity_tile.dart';
import 'package:my_test_app/presentation/Components/homepage/bottom_navigation.dart';
import 'package:my_test_app/presentation/Components/homepage/notification_icon.dart';
import 'package:my_test_app/presentation/Components/homepage/profile_image.dart';
import 'package:my_test_app/presentation/models/activity.dart';
import 'package:my_test_app/presentation/screens/top_up_page.dart';
import 'package:my_test_app/utilities/constant.dart';

import '../Components/homepage/center_card.dart';
import '../Components/shared/ui_helper.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 258.h,
                color: primaryColor,
                padding: EdgeInsets.only(right: 24.w, left: 24.w, top: 70.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ProfileImageAndTitle(),
                        NotificationIcon(),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 25.w,
                  left: 25.w,
                  top: 120.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ActionButton(
                      label: 'Add cylinder',
                    ),
                    ActionButton(
                      label: 'Top Up',
                      onTap: () =>
                          Navigator.of(context).pushNamed(TopUpPage.routeName),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 26.h,
                  right: 25.w,
                  left: 26.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Activity',
                      style: kSubtitleStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          'view all',
                          style: kSubtitleStyle.copyWith(color: primaryColor),
                        ),
                        const Icon(
                          Icons.chevron_right,
                          color: primaryColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 260.h,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    final Activity activity = activities[index];
                    return ActivityTile(activity: activity);
                  },
                  separatorBuilder: (context, index) => Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 17.w, vertical: 3.h),
                    child: const Divider(
                      color: kGreyColor,
                    ),
                  ),
                  itemCount: activities.length,
                ),
              ),
            ],
          ),
          const CenterCardWithIndicators(),
        ],
      ),
    );
  }
}
