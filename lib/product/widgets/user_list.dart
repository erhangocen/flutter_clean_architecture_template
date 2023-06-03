import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';
import 'package:student_app/features/teachers/domain/models/response/teacher_response.dart';

import '../../core/defaultPhotos.dart';
import '../../features/teachers/presentation/cubit/teacher_cubit.dart';

class UserList extends ConsumerStatefulWidget {
  const UserList({
    Key? key,
    required this.userCount,
    required this.title,
    required this.users,
    required this.isLikeable,
  }) : super(key: key);

  final String title;
  final List<TeacherResponse> users;
  final int userCount;
  final bool isLikeable;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserListState();
}

class _UserListState extends ConsumerState<UserList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: context.dynamicHeight(0.9),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PhysicalModel(
              color: Colors.transparent,
              elevation: 5,
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(10)),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "${widget.userCount} ${widget.title}",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: context.verticalPaddingLow,
                child: RefreshIndicator(
                  onRefresh: context.read<TeacherCubit>().getAllTeachersFromDio,
                  child: ListView.separated(
                      itemBuilder: (context, index) => ListTile(
                            key: GlobalKey(debugLabel: "s"),
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(DefaultPhotoPaths.defaultPp),
                            ),
                            title: Text(widget.users[index].name ?? ""),
                          ),
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: widget.userCount),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
