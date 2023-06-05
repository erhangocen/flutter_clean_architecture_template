import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:student_app/app/student_app_cubit.dart';
import 'package:student_app/core/globals.dart';
import 'package:student_app/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../product/constants/theme.dart';
import 'app_router.dart';

class StudentApp extends StatelessWidget {
  StudentApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StudentAppCubit(),
      child: BlocBuilder<StudentAppCubit, StudentAppViewModel>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Student App',
            debugShowCheckedModeBanner: false,
            theme: ThemeConsts.light,
            darkTheme: ThemeConsts.dark,
            themeMode: state.themeMode,
            routerConfig: _appRouter.config(),
            scaffoldMessengerKey: snackbarKey,
            supportedLocales: L10n.all,
            locale: Locale(state.localeKey.name),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
          );
        },
      ),
    );
  }
}

enum LocaleKeys { en, tr }
