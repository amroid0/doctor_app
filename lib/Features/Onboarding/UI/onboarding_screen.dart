import 'package:doctor_app/core/Theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_image_and_text.dart';
import 'widgets/doctor_logo_and_title.dart';
import 'widgets/getStartedButton.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.w),
        child: Column(
          children: [
            DoctorLogoAndTitle(),
            SizedBox(
              height: 30.h,
            ),
            DoctorImageAndText(),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: Styles.font13GrayRegular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h),
                  const GetStartedButton(),
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}
