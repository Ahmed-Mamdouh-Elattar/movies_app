import 'package:flutter/material.dart';
import 'package:movies_app/core/config/app_theme.dart';
import 'package:movies_app/core/routing/app_router.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme.appTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
