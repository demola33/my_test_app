import 'package:flutter/material.dart';
import 'package:my_test_app/presentation/screens/check_out_page.dart';
import 'package:my_test_app/presentation/screens/delivery_address_page.dart';
import 'package:my_test_app/presentation/screens/payment_page.dart';
import 'package:my_test_app/presentation/screens/purchase_order_page.dart';
import 'package:my_test_app/presentation/screens/successful_page.dart';

import 'screens/home_page.dart';
import 'screens/top_up_page.dart';

class Routes {
  static String initialRoute = MyHomePage.routeName;

  static Map<String, Widget Function(BuildContext)> routes = {
    MyHomePage.routeName: (context) => const MyHomePage(),
    TopUpPage.routeName: (context) => const TopUpPage(),
    PurchaseOrderPage.routeName: (context) => const PurchaseOrderPage(),
    DeliveryAddressPage.routeName: (context) => const DeliveryAddressPage(),
    CheckOutPage.routeName: (context) => const CheckOutPage(),
    PaymentPage.routeName: (context) => const PaymentPage(),
    SuccessfulPage.routeName: (context) => const SuccessfulPage(),
  };
}
