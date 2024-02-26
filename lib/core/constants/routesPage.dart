
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/helper/custom_animation.dart';

import '../../features/boarding/pages/board_view.dart';

const splashPath = '/';
final router = GoRouter(
  routes: [
    GoRoute(
      path: splashPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const BoardView(),
      ),
    ),
  ],
);
