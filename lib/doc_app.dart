import 'package:advanced_project/core/helpers/constants.dart';
import 'package:advanced_project/core/routing/app_router.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      // builder: (context, child) => MaterialApp.router(
      //   debugShowCheckedModeBanner: false,
      //
      //   //routeInformationParser: appRouter.defaultRouteParser(),
      // ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: isLoggedInUser ? Routes.homePage : Routes.login,
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          scaffoldBackgroundColor: AppColors.white,
        ),
      ),
    );
  }
}
