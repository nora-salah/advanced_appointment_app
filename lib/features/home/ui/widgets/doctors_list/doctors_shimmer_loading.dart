import 'package:advanced_project/core/helpers/spacing.dart';
import 'package:advanced_project/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsShimmerLoading extends StatelessWidget {
  const DoctorsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                Shimmer.fromColors(
                  baseColor: AppColors.lightGery,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 110.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                    ),
                  ),
                ),
                horizontalSpacing(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Shimmer.fromColors(
                        baseColor: AppColors.lightGery,
                        highlightColor: Colors.white,
                        child: Container(
                          height: 18.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                            color: AppColors.lightGery,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      verticalSpacing(12),
                      Shimmer.fromColors(
                        baseColor: AppColors.lightGery,
                        highlightColor: Colors.white,
                        child: Container(
                          height: 14.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                            color: AppColors.lightGery,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      verticalSpacing(12),
                      Shimmer.fromColors(
                        baseColor: AppColors.lightGery,
                        highlightColor: Colors.white,
                        child: Container(
                          height: 14.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                            color: AppColors.lightGery,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}