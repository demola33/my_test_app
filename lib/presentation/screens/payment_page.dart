import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/Components/payment/payment_card_option.dart';
import 'package:my_test_app/presentation/Components/payment/payment_type_widget.dart';
import 'package:my_test_app/presentation/screens/successful_page.dart';
import 'package:my_test_app/utilities/constant.dart';

import '../Components/shared/ui_helper.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  static String routeName = '/payment';

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool cardSelected = false;

  void triggerAnimation(bool value) {
    setState(() {
      cardSelected = value;
    });
  }

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
              const CustomAppBar(label: 'Payment'),
              const Text(
                'Select payment method',
                style: kNormalBodyStyle,
              ),
              UIHelper.verticalSpace(24),
              PaymentTypeWidget(triggerCardSelection: triggerAnimation),
              UIHelper.verticalSpace(33),
              const Divider(
                color: kExpansionTileColor,
                thickness: 1.5,
              ),
              UIHelper.verticalSpace(15),
              if (cardSelected) ...<Widget>[
                const Text(
                  'Select card',
                  style: kNormalBodyStyle,
                ),
                UIHelper.verticalSpace(15),
                const PaymentCardOption(),
                UIHelper.verticalSpaceSmall(),
                AddWidget(onTap: () {}, label: 'Add new card'),
              ],
              const Spacer(),
              ActionButton(
                label: 'Pay',
                width: 325,
                onTap: () =>
                    Navigator.of(context).pushNamed(SuccessfulPage.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
