import 'package:auto_route/auto_route.dart';
import '../features/main/presentation/main_page.dart';
import '../features/teachers/presentation/pages/teacher_add_page.dart';
import '../features/teachers/presentation/pages/teacher_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Page,Route")
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: MainRoute.page, path: "/"),
    AutoRoute(page: TeacherRoute.page),
    AutoRoute(page: TeacherAddRoute.page),
  ];
}
