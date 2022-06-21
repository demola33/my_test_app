import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_test_app/presentation/routes.dart';
import 'package:my_test_app/presentation/screens/top_up_page.dart';
import 'package:my_test_app/utilities/constant.dart';
import 'package:my_test_app/utilities/reusable_methods.dart';

import 'presentation/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390.0, 844.0),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: createMaterialColor(primaryColor),
        ),
        initialRoute: Routes.initialRoute,
        routes: Routes.routes,
        //home: const MyHomePage(),
      ),
    );
  }
}
