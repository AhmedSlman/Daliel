import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/home/prsentation/view/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/sign_in_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/on_boarding/presentation/views/on_bording_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: RouterNames.OnBoardingView,
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: RouterNames.SignUpView,
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: RouterNames.SignInView,
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignInView(),
      ),
    ),
    GoRoute(
      path: RouterNames.HomeView,
      builder: (context, state) => const HomeView(),
    ),
  ],
);

class RouterNames {
  static const OnBoardingView = "/onBoarding";
  static const SignUpView = "/signUp";
  static const SignInView = "/signIn";
  static const HomeView = "/home";
}
