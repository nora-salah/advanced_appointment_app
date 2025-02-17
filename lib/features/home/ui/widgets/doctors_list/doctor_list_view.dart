import 'package:advanced_project/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/stylea.dart';
import '../../../data/models/specializations_response_model.dart';
import 'doctor_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  DoctorsListView({super.key, this.doctorsList});
  List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: doctorsList?.length,
      itemBuilder: (context, index) {
        return DoctorListViewItem(
          doctorsModel: doctorsList?[index],
        );
      },
    ));
  }
}
