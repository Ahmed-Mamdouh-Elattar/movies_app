import 'package:go_router/go_router.dart';
import 'package:movies_app/core/routing/page_name.dart';
import 'package:movies_app/features/auth/presentation/pages/login_page.dart';
import 'package:movies_app/features/splash_screen/presentation/pages/splash_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: PageName.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: PageName.login,
      builder: (context, state) => const LoginPage(),
    ),
  ],
);
