import 'package:advanced_project/core/theming/app_colors.dart';
import 'package:advanced_project/features/home/logic/home_state.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:advanced_project/features/home/ui/widgets/specialization_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../logic/home_cubit.dart';
import '../doctors_list/doctor_list_view.dart';
import 'speciality_list_view.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationDataList) {
            var specializationList = specializationDataList;
            return setupSuccess(specializationList);
          },
          specializationsError: (errorHandler) {
            return setupError();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
    );
  }

  Widget setupLoading() {
    return Expanded(
        child: Column(
      children: [
        const SpecialityShimmerLoading(),
        verticalSpacing(8),
        const DoctorsShimmerLoading(),
      ],
    ));
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

  Widget setupSuccess(specializationList) {
    return SpecialityListView(
      specializationDataList: specializationList ?? [],
    );
  }
}
