import 'package:advanced_project/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/stylea.dart';

class SpecializationListViewItem extends StatelessWidget {
  SpecializationListViewItem(
      {super.key,
      this.specializationsData,
      required this.itemIndex,
      required this.selectedIndex});
  final int itemIndex;
  final int selectedIndex;
  final SpecializationsData? specializationsData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.darkBlue,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColors.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/notification.svg',
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: AppColors.lightBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/notification.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          verticalSpacing(8),
          Text(
            '${specializationsData?.name ?? 'name'}',
            style: itemIndex == selectedIndex
                ? TextStyles.font14DarkBlueBoldWeight
                : TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
