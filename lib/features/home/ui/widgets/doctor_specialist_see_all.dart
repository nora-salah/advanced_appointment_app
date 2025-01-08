import 'package:advanced_project/core/theming/stylea.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Doctor Speciality', style: TextStyles.font18DarkBlue600Weight),
        Text(
          'See All',
          style: TextStyles.font12BlueB400Weight,
        ),
      ],
    );
  }
}
