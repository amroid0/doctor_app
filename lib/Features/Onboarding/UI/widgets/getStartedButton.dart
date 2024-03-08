import 'package:doctor_app/core/Routing/routes.dart';
import 'package:doctor_app/core/Theming/colors.dart';
import 'package:doctor_app/core/Theming/styles.dart';
import 'package:doctor_app/core/helpers/Extensions.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.LOGIN);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorManager.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: Styles.font16WhiteSemiBold,
      ),
    );
  }
}
