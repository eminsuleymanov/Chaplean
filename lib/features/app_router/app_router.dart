import 'package:chaplean/presentation/pages/liked/liked_music_page.dart';

import '../../presentation/pages/edit_profile/edit_profile_page.dart';
import '../../presentation/pages/privacy/privacy_page.dart';

import 'route_constants.dart';
import '../../presentation/pages/auth/login/login_page.dart';
import '../../presentation/pages/chat/chat_page.dart';
import '../../presentation/pages/library/create_playlist_page.dart';
import '../../presentation/pages/notification/notification_page.dart';
import '../../presentation/pages/onboard/onboard_first_page.dart';
import '../../presentation/pages/onboard/onboard_second_page.dart';
import '../../presentation/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/pages/home/home_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
          name: RouteConstants.home,
          path: '/home',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: HomePage(),
            );
          }),
      GoRoute(
          path: '/login',
          name: RouteConstants.login,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: LoginPage(),
            );
          }),
      GoRoute(
          path: '/onboarding1',
          name: RouteConstants.onboarding1,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: OnboardFirstPage(),
            );
          }),
      GoRoute(
          path: '/onboarding2',
          name: RouteConstants.onboarding2,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: OnboardSecondPage(),
            );
          }),
      GoRoute(
          path: '/notification',
          name: RouteConstants.notification,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: NotificationPage(),
            );
          }),
      GoRoute(
          path: '/profile',
          name: RouteConstants.profile,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: ProfilePage(),
            );
          }),
      GoRoute(
          path: '/library',
          name: RouteConstants.library,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: LibraryPage(),
            );
          }),
      GoRoute(
          path: '/chat',
          name: RouteConstants.chat,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: ChatPage(),
            );
          }),
      GoRoute(
          path: '/edit',
          name: RouteConstants.editPage,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: EditProfilePage(),
            );
          }),
      GoRoute(
          path: '/privacy',
          name: RouteConstants.privacyPage,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: PrivacyPage(),
            );
          }),
          GoRoute(
          path: '/liked',
          name: RouteConstants.likedPage,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: LikedMusicPage(),
            );
          }),
    ],
    redirect: (context, state) async {
      bool isAuthenticated = false;
      if (!isAuthenticated && state.matchedLocation == '/') {
        return state.namedLocation(RouteConstants.onboarding1);
      }
      return null;
    });
