import 'package:advanced_project/core/widgets/app_text_btn.dart';
import 'package:advanced_project/features/login/data/models/login_request_body.dart';
import 'package:advanced_project/features/login/ui/widgets/dont_have_an_account.dart';
import 'package:advanced_project/features/login/ui/widgets/email_and_password.dart';
import 'package:advanced_project/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:advanced_project/features/login/ui/widgets/terms_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/stylea.dart';
import '../logic/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.font24BlueBoldWeight,
              ),
              verticalSpacing(8),
              Text(
                'We\'re excited to have you back\, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: TextStyles.font14Grey2400Weight,
              ),
              verticalSpacing(36),
              Column(children: [
                EmailAndPassword(),
                verticalSpacing(24),
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text('Forgot Password?',
                        style: TextStyles.font13BlueB400Weight)),
                verticalSpacing(40),
                AppTextButton(
                    buttonText: "Login",
                    textStyle: TextStyles.font16WhiteSemiBoldWeight,
                    onPressed: () {
                      validateThenDoLogin(context);
                    }),
                verticalSpacing(16),
                TermsAndConditionsText(),
                verticalSpacing(60),
                DontHaveAccountText(),
                LoginBlocListener()
              ])
            ],
          ),
        ),
      )),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginLStates();
    }
  }
}
