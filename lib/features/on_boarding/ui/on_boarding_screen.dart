import 'package:advanced_project/core/theming/stylea.dart';
import 'package:advanced_project/features/on_boarding/ui/widgets/doc_logo_and_name.dart';
import 'package:advanced_project/features/on_boarding/ui/widgets/doctor_image_and_text.dart';
import 'package:advanced_project/features/on_boarding/ui/widgets/get_started_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            DocLogoAndName(),
            SizedBox(
              height: 30.h,
            ),
            DoctorImageAndText(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font13GreyNormalWeight,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  GetStartedBtn(),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
