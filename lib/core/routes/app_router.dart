import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/sign_in.dart';
import '../../features/auth/presentation/views/sign_up.dart';
import '../../features/on_boarding/presentation/views/on_bording.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/onBoarding",
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: "/signUp",
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: "/signIn",
      builder: (context, state) => const SignInView(),
    ),
  ],
);
