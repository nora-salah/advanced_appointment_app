import 'package:advanced_project/core/helpers/extientions.dart';
import 'package:bloc/bloc.dart';

import '../../../core/networking/api_error_handler.dart';
import '../data/models/specializations_response_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  List<SpecializationsData?>? specializationsList = [];
  void getSpecializations() async {
    emit(HomeState.specializationLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(success: (specializationsResponseModel) {
      specializationsList =
          specializationsResponseModel.specializationDataList ?? [];
      getDoctorsList(specializationId: specializationsList?.first?.id);
      emit(HomeState.specializationsSuccess(specializationsList));
    }, failure: (apiErrorModel) {
      emit(HomeState.specializationsError(apiErrorModel));
    });
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList!.isNullOrEmptyy()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError());
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
