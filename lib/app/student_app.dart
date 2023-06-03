import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_app/core/globals.dart';
import 'package:student_app/product/constants/color_sheme.dart';

import 'app_router.dart';

class StudentApp extends ConsumerWidget {
  StudentApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Student App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          useMaterial3: true, colorScheme: ColorSchemes.lightColorScheme),
      /* darkTheme: ThemeConsts.dark,
      themeMode: provider.currentThemeMode, */
      routerConfig: _appRouter.config(),
      scaffoldMessengerKey: snackbarKey,
    );
  }
}
