import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:student_app/app/student_app.dart';
import 'package:student_app/app/student_app_cubit.dart';
import '../../../app/app_router.dart';
import '../../teachers/presentation/cubit/teacher_cubit.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeacherCubit()..initialize(),
      child: const MainPageUI(),
    );
  }
}

class MainPageUI extends StatefulWidget {
  const MainPageUI({Key? key}) : super(key: key);

  @override
  State<MainPageUI> createState() => _MainPageUIState();
}

class _MainPageUIState extends State<MainPageUI> {
  @override
  void dispose() {
    print("dispose oldu");
    super.dispose();
    context.read<TeacherCubit>().clearCache();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                context.read<StudentAppCubit>().changeTheme();
              },
              icon: const Icon(Icons.dark_mode))
        ],
      ),
      drawer: const _MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  context.router.push(const LoginRoute());
                },
                child: Text(
                  "5 New Messages",
                  style: context.textTheme.titleSmall,
                )),
            TextButton(
                onPressed: () {
                  //context.pushRoute(const PageRouteInfo("StudentRoute.name"));
                  context.router.push(const TeacherAddRoute());
                },
                child: Text(
                  "Add Teacher",
                  style: context.textTheme.titleSmall,
                )),
            TextButton(
                onPressed: () {
                  context.navigateTo(const TeacherRoute());
                },
                child: Text(
                  "3 Teacher",
                  style: context.textTheme.titleSmall,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<StudentAppCubit>().changeLocale(LocaleKeys.tr);
      }),
    );
  }
}

class _MainDrawer extends StatelessWidget {
  const _MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
