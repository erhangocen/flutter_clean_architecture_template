import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:student_app/features/teachers/presentation/cubit/viewModel/teacher_view_model.dart';
import '../cubit/teacher_cubit.dart';
import '../../../../product/mixins/sheet_mixin.dart';
import '../../../../product/widgets/user_list.dart';
import '../cubit/teacher_add_cubit.dart';
import '../cubit/viewModel/add_teacher_view_model.dart';

@RoutePage()
class TeacherPage extends StatelessWidget {
  const TeacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeacherCubit()..initialize(),
      child: const TeacherPageUI(),
    );
  }
}

class TeacherPageUI extends StatelessWidget with ProductSheetMixin {
  const TeacherPageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TeacherPage'),
        actions: [
          BlocBuilder<TeacherCubit, TeacherViewModel>(
              builder: (context, state) {
            return state.isLoading == true
                ? const CircularProgressIndicator()
                : const SizedBox();
          })
        ],
      ),
      body: BlocListener<TeacherCubit, TeacherViewModel>(
        listener: (context, state) {
          if (state.error != null) {
            var snackBar = SnackBar(
              duration: const Duration(seconds: 2),
              elevation: 5,
              clipBehavior: Clip.hardEdge,
              behavior: SnackBarBehavior.floating,
              content: Text(state.error.toString()),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: BlocBuilder<TeacherCubit, TeacherViewModel>(
          builder: (context, state) {
            return UserList(
              title: "Teacher",
              users: state.teacherList,
              userCount: state.teacherList.length,
              isLikeable: false,
            );
          },
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: () async {
          /* teacherFormSheet(context); */
          /* await context.read<TeacherCubit>().getAllTeachersFromDio(); */
          
        },
        child: const Icon(Icons.add),
      ), */
    );
  }

  /* Future<dynamic> teacherFormSheet(BuildContext context) async {
    return await showCustomSheet(
      context,
      BlocProvider(
        create: (context) => TeacherAddCubit(),
        child: Container(
          child: BlocBuilder<TeacherAddCubit, AddTeacherViewModel>(
            builder: (context, state) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: state.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          "ADD TEACHER",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Name"),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            context
                                .read<TeacherAddCubit>()
                                .updateTeacherRequest(
                                    state.teacherRequest.copyWith(name: value));
                          },
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Department"),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (value) {
                          context.read<TeacherAddCubit>().updateTeacherRequest(
                              state.teacherRequest.copyWith(department: value));
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
      () {
        context.pop();
      },
    );
  } */
}
