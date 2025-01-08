import 'package:advanced_project/core/helpers/spacing.dart';
import 'package:advanced_project/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:advanced_project/features/home/ui/widgets/doctor_specialist_see_all.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_list/doctors_bloc_builder.dart';
import 'package:advanced_project/features/home/ui/widgets/specialization_list/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpacing(24),
              const DoctorSpecialitySeeAll(),
              verticalSpacing(18),
              const SpecializationsBlocBuilder(),
              verticalSpacing(8),
              const DoctorsBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
