import 'package:advanced_project/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// //thin w100
// extraThin w200
// light w300
// regular w400
// medium w500
// semiBold w600
// bold w700
// extraBold w800
class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black);

  static TextStyle font32BlueBoldWeight = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor);
  static TextStyle font24BlueBoldWeight = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor);
  static TextStyle font13BlueB400Weight = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryColor);

//font13GrayRegular font15DarkBlue
  static TextStyle font13GrayRegular = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeight.w400, color: AppColors.grey);
  static TextStyle font12GrayMedium = TextStyle(
      fontSize: 12.sp, fontWeight: FontWeight.w500, color: AppColors.grey);

//font13DarkBlueMedium font14BlueSemiBold
  static TextStyle font14DarkBlueBoldWeight = TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.bold, color: AppColors.darkBlue);
  static TextStyle font13DarkBlueMedium = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeight.w500, color: AppColors.darkBlue);

  static TextStyle font13BlueSemiBoldWeight = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor);
  //font12BlueRegular
  static TextStyle font12BlueRegular = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryColor);
  static TextStyle font12DarkBlueRegular = TextStyle(
      fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColors.darkBlue);
  static TextStyle font13GreyNormalWeight = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeight.normal, color: AppColors.grey);
  static TextStyle font16WhiteSemiBoldWeight = TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.bold, color: AppColors.white);

  static TextStyle font14Grey2400Weight = TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.grey);
  static TextStyle font14lightGrey500Weight = TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColors.lightGery);
  static TextStyle font14DarkBlue500Weight = TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColors.darkBlue);
  static TextStyle font18white500Weight = TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w500, color: AppColors.white);

  static TextStyle font18DarkBlueBoldWeight = TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.bold, color: AppColors.darkBlue);
  static TextStyle font18DarkBlue600Weight = TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w600, color: AppColors.darkBlue);
  static TextStyle font12BlueB400Weight = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryColor);
  static TextStyle font13GeryBold400Weight = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeight.w400, color: AppColors.grey);
}
