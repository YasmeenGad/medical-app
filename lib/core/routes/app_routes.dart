import 'package:flutter/material.dart';
import 'package:medical_app/features/home/presentation/views/card_details_view.dart';
import 'package:medical_app/features/home/presentation/views/doctor_details_view.dart';
import 'package:medical_app/features/home/presentation/views/homeView.dart';
import 'package:medical_app/features/map/presentation/views/map_view.dart';

import '../../features/auth/presentation/views/login.dart';
import '../utils/screens/under_build_screen.dart';
import 'base_routes.dart';

class AppRoutes {
  static const String login = '/';
  static const String home = "home";
  static const String map = "map";
  static const String doctorDetails = 'doctorDetails';
  static const String cardDetails = 'cardDetails';

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
      case AppRoutes.map:
        return BaseRoute(
          page: const MapView(),
        );
      case AppRoutes.doctorDetails:
        return BaseRoute(
          page: const DoctorDetailsView(),
        );
      case AppRoutes.cardDetails:
        return BaseRoute(
          page: const CardDetailsView(),
        );
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
