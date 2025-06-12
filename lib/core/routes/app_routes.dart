import 'package:flutter/material.dart';
import 'package:medical_app/features/home/presentation/views/homeView.dart';

import '../../features/auth/presentation/views/login.dart';
import '../utils/screens/under_build_screen.dart';
import 'base_routes.dart';

class AppRoutes {
  static const String login = '/';
  static const String home = "home";

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.login:
        return BaseRoute(
          page: const LoginView(),
        );
      case AppRoutes.home:
        return BaseRoute(
          page: const HomeView(),
        );
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
