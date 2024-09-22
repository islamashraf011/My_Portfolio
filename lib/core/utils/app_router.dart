import 'package:go_router/go_router.dart';
import 'package:portfolio/features/add_project/presentation/views/add_new_project_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const String addNewProjectView = '/AddNewProjectView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: addNewProjectView,
        builder: (context, state) => const AddNewProjectView(),
      ),
    ],
  );
}
