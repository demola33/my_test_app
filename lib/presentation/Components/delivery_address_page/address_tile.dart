import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/shared/ui_helper.dart';
import 'package:my_test_app/presentation/models/address.dart';
import 'package:my_test_app/utilities/constant.dart';

class AddressTile extends StatefulWidget {
  const AddressTile({
    Key? key,
    required this.address,
  }) : super(key: key);

  final Address address;

  @override
  State<AddressTile> createState() => _AddressTileState();
}

class _AddressTileState extends State<AddressTile> {
  Address? _address;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 320.w,
      decoration: BoxDecoration(
        color: kExpansionTileColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '32b Oxley Street, Ilaje Lekki Lagos',
                  style: kNormalBodyStyle.copyWith(
                    fontSize: 13.5,
                  ),
                ),
                UIHelper.verticalSpace(7),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Change',
                    style: kSmallBodyTextStyle.copyWith(
                      color: primaryColor,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
            CustomRadio<Address>(
              value: widget.address,
              groupValue: _address,
              color: primaryColor,
              onChanged: (value) {
                setState(() {
                  _address = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
