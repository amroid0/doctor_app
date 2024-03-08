import 'package:doctor_app/core/Theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorLogoAndTitle extends StatelessWidget {
  const DoctorLogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/logo_small.svg"),
        SizedBox(width: 10.w,),
        Text(
          "DocDoc",
          style: Styles.font24Black700Weight,
        )
      ],
    );
  }
}
