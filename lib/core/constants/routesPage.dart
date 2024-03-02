import 'package:go_router/go_router.dart';
import 'package:ride_share/core/helper/custom_animation.dart';
import 'package:ride_share/features/auth/presentation/pages/welcome_view.dart';

import '../../features/boarding/presentation/pages/board_view.dart';

const boardPath = '/';
const welcomePath = '/welcome';
final router = GoRouter(
  routes: [
    GoRoute(
      path: boardPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const BoardView(),
      ),
    ),
    GoRoute(
      path: welcomePath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const WelcomeView(),
      ),
    ),
  ],
);
