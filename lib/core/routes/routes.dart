import 'package:go_router/go_router.dart';
import 'package:jack_tips_todo/core/routes/route_names.dart';
import 'package:jack_tips_todo/futures/auth/view/login_view.dart';
import 'package:jack_tips_todo/futures/auth/view/register_view.dart';
import 'package:jack_tips_todo/futures/splash/view/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      name: RouteNames.splash,
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      name: RouteNames.login,
      path: "/login",
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      name: RouteNames.register,
      path: "/register",
      builder: (context, state) => const RegisterView(),
    ),
  ],
);
