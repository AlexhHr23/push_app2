
import 'package:go_router/go_router.dart';
import 'package:push_app2/presentation/Screens/detail_screen.dart';
import 'package:push_app2/presentation/Screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/push-details/:messageId',
      builder: (context, state) => DetailScreen(pushMessageId: state.pathParameters['messageId'] ?? ''),
    )
  ]
);