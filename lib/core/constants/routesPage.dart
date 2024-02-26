// GoRouter configuration


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/helper/custom_animation.dart';

const splashPath = '/';
const onBoardingPath = '/onBoard';
const authPath = '/authPath';
const homePath = '/home';
const interestedInWorkPath = '/interstedInWork';
const successfullyPagePath = '/successfullyView';
const locationWorkPath = '/locationWork';
const accountSetUpPath = '/accountSetUp';
const createPassPath = '/createPassPath';
const searchPath = '/searchPath';
const jopDetailPath = '/jopDetailPath';
const applyJopPath = '/applyJopPath';
const notificationPath = '/notificationPath';
const messagesPath = '/messagesPath';
const chatPath = '/chatPath';
const editProfilePath = '/editProfilePath';
const portfolioPath = '/portfolioPath';
const languagePath = '/langPath';
const loginSecurityPath = '/loginSecurityPath';
const notificationProfilePath = '/notifiProfilePath';
const loginSecurityAuthPath = '/loginSecurityAuthPath';
const twoStepVerifiPath = '/twoStepVerifiPath';
const helpCenterPath = '/helpCenterPath';
const privacyPath = '/privacyPath';
const termConditionPath = '/termConditionPath';
const completeProfilePath = '/completeProfilePath';
const completeProfileProcessPath = '/completeProfileProcessPath';
const suggestedOrRecentJopPath = '/suggestedJopPath';
final router = GoRouter(
  routes: [
    GoRoute(
      path: splashPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child:  Container(),
      ),
    ),
    
  ],
);
