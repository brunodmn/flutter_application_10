import 'package:flutter/cupertino.dart';
import 'package:flutter_application_10/presentation/pages/home/page.dart';
import 'package:go_router/go_router.dart';
import '../presentation/pages/error/page.dart';
import '../presentation/pages/home/billings/page.dart';
import '../presentation/pages/loading/page.dart';

part 'routes.g.dart';

//* subscriber route [START]
@TypedGoRoute<HomeRoute>(
    path: '/home', routes: [TypedGoRoute<HomeBillingsRoute>(path: 'billings')])
@immutable
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@immutable
class HomeBillingsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeBillingsPage();
  }
}
//* subscriber route [END]

//* ROOT route [START]
@TypedGoRoute<RootRoute>(path: '/', routes: [
  TypedGoRoute<LoadingRoute>(
    path: 'loading',
  ),
  TypedGoRoute<ErrorRoute>(
    path: 'error',
  ),
])
@immutable
class RootRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoadingPage();
  }
}

@immutable
class LoadingRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoadingPage();
  }
}

@immutable
class ErrorRoute extends GoRouteData {
  final String message;

  const ErrorRoute({required this.message});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ErrorPage(message);
  }
}
