import 'package:advanced_project/core/helpers/spacing.dart';
import 'package:advanced_project/core/theming/stylea.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 195.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/background.png'),
                )),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Book and\nschedule with\n nearest doctor',
                style: TextStyles.font18white500Weight,
              ),
              verticalSpacing(16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0),
                      )),
                  child: Text(
                    'Find Nearby',
                    style: TextStyles.font12BlueRegular,
                  ),
                ),
              )
            ]),
          ),
          Positioned(
              right: 16,
              top: 0,
              child: Image.asset(
                'assets/images/nurse.png',
                height: 200.0.h,
              ))
        ]));
  }
}
