import 'package:fcai_platform/features/authentication/presentation/views/login_page.dart';
import 'package:fcai_platform/features/authentication/presentation/views/registration_view.dart';
import 'package:fcai_platform/features/authentication/presentation/views/select_department.dart';
import 'package:fcai_platform/features/authentication/presentation/views/verfication_view.dart';
import 'package:fcai_platform/features/authentication/presentation/views/splash_view.dart';
import 'package:fcai_platform/features/main_app/main_scaffold/main_scaffold.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String splash = '/';
  static const String selectDepartment = '/select-department';
  static const String login = '/login';
  static const String register = '/register';
  static const String verificationCode = '/verificationCode';
  static const String mainApp = '/main';
}

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      name: 'splash',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: AppRoutes.selectDepartment,
      name: 'selectDepartment',
      builder: (context, state) => const SelectDepartment(),
    ),
    GoRoute(
      path: AppRoutes.login,
      name: 'login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: AppRoutes.register,
      name: 'register',
      builder: (context, state) => const RegistrationView(),
    ),
    GoRoute(
      path: AppRoutes.verificationCode,
      name: 'verificationCode',
      builder: (context, state) => const VerficationView(),
    ),

    GoRoute(
      path: AppRoutes.mainApp,
      name: 'mainApp',
      builder: (context, state) => const MainScaffold(),
    ),
  ],
);
