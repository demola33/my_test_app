// import 'package:flutter/material.dart';
// import 'package:my_test_app/presentation/models/bottom_nav_item.dart';
// import 'package:my_test_app/utilities/constant.dart';

// class BottomNavigation extends StatelessWidget {
//   const BottomNavigation({Key? key, required this.tabs}) : super(key: key);

//   final List<BottomNavItemData> tabs;

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       showSelectedLabels: true,
//       showUnselectedLabels: true,
//       unselectedLabelStyle: kBodyTextStyle,
//       items: tabs
//           .map(
//             (e) => _buildItem(
//               index: tabs.indexOf(e),
//               icon: e.icon,
//               label: e.title,
//             ),
//           )
//           .toList(),
//       onTap: (value) {},
//       type: BottomNavigationBarType.shifting,
//       currentIndex: 1,
//     );
//   }
// }

// // Color _tabColor(int index) {
// //   rety
// // }

// BottomNavigationBarItem _buildItem({
//   required int index,
//   required IconData icon,
//   required String label,
// }) {
//   return BottomNavigationBarItem(
//     icon: Icon(
//       icon,
//       color: kGreyColor,
//     ),
//     label: label,
//   );
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/constant.dart';

const double bottomPadding = 8;

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: kLabelTextStyle,
      unselectedLabelStyle: kLabelTextStyle.copyWith(color: Colors.black),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: bottomPadding.h),
            child: Image.asset(
              'asset/icons/home.png',
              height: 18.w,
              width: 18.w,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: bottomPadding.h),
            child: Image.asset(
              'asset/icons/card.png',
              height: 16.h,
              width: 20.w,
            ),
          ),
          label: 'Card',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: bottomPadding.h),
            child: Image.asset(
              'asset/icons/activity.png',
              height: 21.w,
              width: 21.w,
            ),
          ),
          label: 'Activity',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: bottomPadding.h),
            child: Image.asset(
              'asset/icons/profile.png',
              height: 20.h,
              width: 14.w,
            ),
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: primaryColor,
      unselectedItemColor: kLightGreyColor,
      onTap: (value) {},
    );
  }
}
