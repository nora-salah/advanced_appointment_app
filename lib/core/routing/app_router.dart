import 'package:advanced_project/core/di/dependancy_injection.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/features/home/logic/home_cubit.dart';
import 'package:advanced_project/features/home/ui/home_screen.dart';
import 'package:advanced_project/features/login/logic/login_cubit.dart';
import 'package:advanced_project/features/sign_up/logic/sign_up_cubit.dart';
import 'package:advanced_project/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/ui/login_screen.dart';
import '../../features/on_boarding/ui/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen()));
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.homePage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => HomeCubit(getIt())..getSpecializations(),
                child: const HomeScreen()));
      case Routes.register:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: const SignupScreen()));
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
