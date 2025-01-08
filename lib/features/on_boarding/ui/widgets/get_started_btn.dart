import 'package:advanced_project/core/helpers/extientions.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/features/login/ui/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/stylea.dart';

class GetStartedBtn extends StatelessWidget {
  const GetStartedBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
      ),
      onPressed: () {
        context.push(Routes.login);
      },
      child: Text('Get Started', style: TextStyles.font16WhiteSemiBoldWeight),
    );
  }
}
