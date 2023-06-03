import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import '../../../../product/mixins/sheet_mixin.dart';
import '../../domain/models/response/teacher_response.dart';
import '../cubit/teacher_cubit.dart';
import '../cubit/viewModel/teacher_view_model.dart';

@RoutePage()
class TeacherAddPage extends StatelessWidget {
  const TeacherAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeacherCubit()..initialize(),
      child: const TeacherAddPageUI(),
    );
  }
}

class TeacherAddPageUI extends StatelessWidget with ProductSheetMixin {
  const TeacherAddPageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: BlocBuilder<TeacherCubit, TeacherViewModel>(
          builder: (context, state) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Form(
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
                              context.read<TeacherCubit>().updateTeacherRequest(
                                    state.teacherRequest.copyWith(name: value),
                                  );
                            },
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Department"),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            context.read<TeacherCubit>().updateTeacherRequest(
                                state
                                    .copyWith(
                                        teacherRequest: state.teacherRequest
                                            .copyWith(department: value))
                                    .teacherRequest);
                          },
                        ),
                        SizedBox(
                          height: context.dynamicHeight(0.02),
                        ),
                        InkWell(
                          onTap: () async {
                            final result =
                                await showModalBottomSheet<TeacherResponse>(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return TecherSelectionList(
                                        teacherList: state.teacherList,
                                      );
                                    });
                            context.read<TeacherCubit>().selectTeacher(result);
                            print(result);
                          },
                          child: TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              disabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              label: Text(
                                  state.selectedTeacher?.name.toString() ??
                                      "Select One"),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                            ),
                            onChanged: (value) {},
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: context.verticalPaddingMedium,
                      child: ElevatedButton(
                          onPressed: state.isLoading
                              ? null
                              : () {
                                  context.read<TeacherCubit>().addTeacher();
                                },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text("send"),
                              state.isLoading
                                  ? Container(
                                      padding: context.onlyLeftPaddingLow,
                                      width: 26,
                                      height: 20,
                                      child: const CircularProgressIndicator())
                                  : const SizedBox()
                            ],
                          )))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class TecherSelectionList extends StatefulWidget {
  const TecherSelectionList({super.key, required this.teacherList});

  final List<TeacherResponse> teacherList;

  @override
  State<TecherSelectionList> createState() => _TecherSelectionListState();
}

class _TecherSelectionListState extends State<TecherSelectionList> {
  late List<TeacherResponse> teacherList;
  late List<TeacherResponse> searchList;

  @override
  void initState() {
    super.initState();
    teacherList = widget.teacherList;
    searchList = teacherList;
  }

  void searchTeacher(String searchText) {
    var result = teacherList.where((element) {
      return element.name!
          .toLowerCase()
          .contains(searchText.toString().toLowerCase());
    }).toList();
    setState(() {
      searchList = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.isKeyBoardOpen
          ? context.dynamicHeight(0.8)
          : context.dynamicHeight(0.5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: context.verticalPaddingLow,
            child: Divider(
              color: Colors.black45,
              thickness: 4,
              indent: MediaQuery.of(context).size.width * 0.35,
              endIndent: MediaQuery.of(context).size.width * 0.35,
            ),
          ),
          Container(
              padding: context.paddingLow,
              width: context.dynamicWidth(0.95),
              child: TextField(
                onChanged: (value) {
                  searchTeacher(value);
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_outlined),
                  contentPadding: context.paddingLow,
                  isDense: false,
                  isCollapsed: true,
                  hintText: "Search",
                  border: const OutlineInputBorder(),
                ),
              )),
          Expanded(
            child: ListView.builder(
              itemCount: searchList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchList[index].name.toString()),
                  onTap: () {
                    context.pop(searchList[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
