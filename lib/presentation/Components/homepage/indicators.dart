import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/utilities/constant.dart';

class Indicators extends StatefulWidget {
  const Indicators({Key? key}) : super(key: key);

  @override
  State<Indicators> createState() => _IndicatorsState();
}

class _IndicatorsState extends State<Indicators> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: cardList.map((e) {
        int index = cardList.indexOf(e);
        return Container(
          width: 10.w,
          height: 10.w,
          margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 15.h),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? primaryColor : kGreyColor,
          ),
        );
      }).toList(),
    );
  }
}

List<int> cardList = [1, 2];
