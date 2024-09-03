import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_10/presentation/pages/error/page.dart';
import 'package:flutter_application_10/presentation/providers/current_app_provider.dart';
import 'package:flutter_application_10/presentation/providers/current_subscriber_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'routes.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(RouterRef ref) {
  final appState = ref.watch(currAppProviderProvider);

  return GoRouter(
    initialLocation: RootRoute().location,
    redirect: (context, state) {
      if (appState is AsyncLoading) {
        return LoadingRoute().location;
      }
      if (appState is AsyncError) {
        return ErrorRoute(message: appState.error.toString()).location;
      }
      if (appState is AsyncData) {
        final subscriberState = ref.watch(currSubscriberProvider);
        final matchedLocation = state.matchedLocation;

        final isHome = matchedLocation.startsWith(HomeRoute().location);
        print('matchedLocation ${state.matchedLocation}');
        print('isHome $isHome');

        if (isHome) return null;
        if (subscriberState is AsyncData) {
          return HomeRoute().location;
        }
        if (subscriberState is AsyncLoading) {
          return LoadingRoute().location;
        }
        if (subscriberState is AsyncError) {
          return ErrorRoute(message: subscriberState.error.toString()).location;
        }
        // final subscriberState = ref.watch(currentSubscriberProvider);
        // final isAtSubsriberHome =
        //     state.matchedLocation.startsWith(SubscriberRoute().location);
        // // wont redirect if its in home or home sub rountes
        // print(' state.matchedLocation ${state.matchedLocation}');
        // print(' isAtSubsriberHome ${isAtSubsriberHome}');
        // if (isAtSubsriberHome && (state is! SubscriberStateNotLoggedIn)) {
        //   return null;
        // }
        // switch (subscriberState) {
        //   case SubscriberStateLoading():
        //     print('redirected');

        //     return LoadingRoute().location;
        //   case SubscriberStateNotLoggedIn():
        //     print('redirected');

        //     return SubscriberLoginRoute().location;
        //   case SubscriberStateSuccess():
        //     print('redirected');

        //     return SubscriberRoute().location;
        //   case SubscriberStateError():
        //     print('redirected');

        //     return ErrorRoute(message: subscriberState.appError.message)
        //         .location;
        // }
      }

      return null;
    },
    routes: $appRoutes,
    navigatorKey: rootNavigatorKey,
    errorBuilder: (context, state) {
      return ErrorPage(state.error.toString());
    },
  );
}
