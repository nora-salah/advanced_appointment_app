import 'package:advanced_project/core/helpers/extientions.dart';
import 'package:advanced_project/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'core/di/dependancy_injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shered_pref_helper.dart';
import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await checkIfLoggedInUser();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

Future<void> checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
