import 'package:advanced_project/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/stylea.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          Text('Hi, Nora!', style: TextStyles.font18DarkBlueBoldWeight),
          Text('How are you today?', style: TextStyles.font13GeryBold400Weight),
        ]),
        Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.moreLighterGrey,
          child: SvgPicture.asset('assets/svgs/notification.svg'),
        )
      ],
    );
  }
}
