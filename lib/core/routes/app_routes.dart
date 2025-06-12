

import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/login.dart';
import '../utils/screens/under_build_screen.dart';
import 'base_routes.dart';

class AppRoutes {
  static const String login = '/';


  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.login:
        return BaseRoute(
          page: const LoginView(),
        );
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
