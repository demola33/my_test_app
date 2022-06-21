//Color
import 'package:flutter/material.dart';
import 'package:my_test_app/presentation/models/enums.dart';

const primaryColor = Color(0XFF60B86D);
const backgroundColor = Color(0XFFFFFFFF);
const kWhiteColor = Color(0XFFF9FAFB);
const kCenterCardColor = Color(0XFFFFCF10);
const kWhiteCardColor = Color(0XFFFAFBFD);
const kGreyColor = Color(0XFFC4C4C4);
const kTextGreyColor = Color(0XFF999999);
const kLightGreyColor = Color(0XFF6B7280);
const kWhiteShadedColor = Color(0XFFF9F8F8);
const kLighterGreyColor = Color(0XFFC0C0C0);
const kExpansionTileColor = Color(0XFFEAEAEA);
const kDividerlColor = Color(0XFFF3F4F6);
const kDarkColor = Color(0XFF222222);
const kCheckOutDarkColor = Color(0XFF424347);

//Text Styles

const kProfileTitleStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: kWhiteColor,
);
const kLargeTitleStyle = TextStyle(
  fontSize: 70,
  fontWeight: FontWeight.bold,
  color: kWhiteColor,
);
const kSubtitleStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: kLightGreyColor,
);
const kNormalBodyStyle = TextStyle(
  fontSize: 15,
  //fontWeight: FontWeight.w600,
  color: kDarkColor,
);
const kButtonTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  color: kWhiteColor,
);
const kListTileTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w700,
  color: kDarkColor,
);
const kLabelTextStyle = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w600,
  color: kLightGreyColor,
);
const kLabelTextMediumStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w400,
  color: Color(0xFF8A8A8A),
  letterSpacing: 0.4,
);

const kSmallBodyTextStyle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

const Map<OrderType, String> orderTypeData = {
  OrderType.newCylinder: 'New Cylinder',
  OrderType.swapCylinder: 'Swap Cylinder',
};
