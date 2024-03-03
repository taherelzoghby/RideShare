import 'package:go_router/go_router.dart';
import 'package:ride_share/core/helper/custom_animation.dart';
import 'package:ride_share/features/auth/presentation/pages/phone_verification_view.dart';
import 'package:ride_share/features/auth/presentation/pages/set_pass_view.dart';
import 'package:ride_share/features/auth/presentation/pages/sign_up_view.dart';
import 'package:ride_share/features/auth/presentation/pages/welcome_view.dart';

import '../../features/boarding/presentation/pages/board_view.dart';

const boardPath = '/';
const welcomePath = '/welcome';
const signUpPath = '/signup';
const loginPath = '/login';
const phoneVerificationPath = '/phoneVerifi';
const setPasswordPass = '/setPasswordPass';
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
    GoRoute(
      path: signUpPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: phoneVerificationPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const PhoneVerificationView(),
      ),
    ),
    GoRoute(
      path: setPasswordPass,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const SetPassView(),
      ),
    ),
  ],
);
