import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app/features/login/presentation/cubit/view_model/login_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'cubit/login_cubit.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit()..init(),
      child: const LoginPageUI(),
    );
  }
}

class LoginPageUI extends StatelessWidget {
  const LoginPageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.deneme),
      ),
      body: Center(child: BlocBuilder<LoginCubit, LoginViewModel>(
        builder: (context, state) {
          return state.isLoading
              ? const CircularProgressIndicator()
              : Text(state.token ?? 'olmadı');
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<LoginCubit>().login();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
