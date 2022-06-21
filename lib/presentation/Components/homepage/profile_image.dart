import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/shared/ui_helper.dart';
import 'package:my_test_app/utilities/constant.dart';

class ProfileImageAndTitle extends StatelessWidget {
  const ProfileImageAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(4.r),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kWhiteColor,
          ),
          child: Container(
            width: 44.w,
            height: 44.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('asset/images/Image-76.png'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ),
        UIHelper.horizontalSpaceSmall(),
        const Text(
          'Paul N.',
          style: kProfileTitleStyle,
        )
      ],
    );
  }
}
