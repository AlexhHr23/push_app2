
import 'package:go_router/go_router.dart';
import 'package:push_app2/presentation/Screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    )
  ]
);