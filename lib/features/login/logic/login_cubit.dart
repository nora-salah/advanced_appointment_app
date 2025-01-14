import 'package:advanced_project/core/networking/dio_factory.dart';
import 'package:advanced_project/features/login/data/models/login_request_body.dart';
import 'package:advanced_project/features/login/data/repos/login-repo.dart';
import 'package:advanced_project/features/login/logic/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/helpers/shered_pref_helper.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(LoginState.initial());
  final LoginRepo _loginRepo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginLStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));

    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.userData?.token ?? '');
      emit(LoginState.success(loginResponse));
    }, failure: (apiErrorModel) {
      emit(LoginState.error(apiErrorModel));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
