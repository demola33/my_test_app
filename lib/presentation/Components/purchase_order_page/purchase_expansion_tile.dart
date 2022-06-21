import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/shared/ui_helper.dart';
import 'package:my_test_app/presentation/models/order.dart';

import '../../../utilities/constant.dart';
import '../../models/enums.dart';
import '../shared/dropdown_widget.dart';

class PurchaseExpansionTile extends StatefulWidget {
  const PurchaseExpansionTile({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;

  @override
  State<PurchaseExpansionTile> createState() => _PurchaseExpansionTileState();
}

class _PurchaseExpansionTileState extends State<PurchaseExpansionTile> {
  OrderType? _orderType;
  final items = <int>[1, 2, 3, 4, 5];
  DropdownMenuItem<int> buildItem(int item) => DropdownMenuItem(
        value: item,
        child: Text('$item'),
      );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          dividerColor: Colors.transparent,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: ExpansionTile(
            backgroundColor: kExpansionTileColor,
            collapsedBackgroundColor: kExpansionTileColor,
            collapsedIconColor: kLighterGreyColor,
            iconColor: kLighterGreyColor,
            title: Text(
              'Order ${widget.order.orderID}',
              style: kListTileTextStyle.copyWith(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.2,
              ),
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w),
                child: Column(
                  children: [
                    Container(
                      height: 69.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.2,
                          color: kLighterGreyColor,
                        ),
                        color: _orderType == OrderType.swapCylinder
                            ? primaryColor
                            : kWhiteShadedColor,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 18.w,
                          left: 22.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'asset/icons/cylinder_icon.png',
                                  width: 33.w,
                                  height: 33.w,
                                ),
                                UIHelper.horizontalSpace(15),
                                Text(
                                  'Swap Cylinder',
                                  style: kButtonTextStyle.copyWith(
                                    color: _orderType == OrderType.swapCylinder
                                        ? kWhiteColor
                                        : kTextGreyColor,
                                    fontSize: 16,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                              ],
                            ),
                            CustomRadio<OrderType>(
                              value: OrderType.swapCylinder,
                              groupValue: _orderType,
                              onChanged: (OrderType? orderType) {
                                setState(() {
                                  _orderType = orderType;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    UIHelper.verticalSpace(15),
                    Container(
                      height: 69.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.2,
                          color: kLighterGreyColor,
                        ),
                        color: _orderType == OrderType.newCylinder
                            ? primaryColor
                            : kWhiteShadedColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 18.w,
                          left: 22.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'asset/icons/new_cylinder.png',
                                  width: 33.w,
                                  height: 33.w,
                                ),
                                UIHelper.horizontalSpace(15),
                                Text(
                                  'New Cylinder',
                                  style: kButtonTextStyle.copyWith(
                                    color: _orderType == OrderType.newCylinder
                                        ? kWhiteColor
                                        : kTextGreyColor,
                                    fontSize: 16,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                              ],
                            ),
                            CustomRadio<OrderType>(
                              value: OrderType.newCylinder,
                              groupValue: _orderType,
                              onChanged: (OrderType? orderType) {
                                setState(() {
                                  _orderType = orderType;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    UIHelper.verticalSpaceMedium(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownListWidget<int>(
                          labelText: 'Cylinder Weight',
                          items: items.map(buildItem).toList(),
                        ),
                        DropdownListWidget<int>(
                          labelText: 'Number',
                          items: items.map(buildItem).toList(),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
