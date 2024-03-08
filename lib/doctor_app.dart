import 'package:doctor_app/core/Routing/app_routing.dart';
import 'package:doctor_app/core/Routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/Theming/colors.dart';

class DoctorApp extends StatelessWidget {
  final AppRouting appRouting;

  const DoctorApp({super.key, required this.appRouting});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp(
          title: "docotrApp",
          initialRoute: Routes.ONBOARDING,
          onGenerateRoute: appRouting.generateRoute,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              primaryColor: ColorManager.primaryColor),
        );
      },
    );
  }
}
