import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const String addNewProjectView = '/AddNewProjectView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
