// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AccountRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountPage(),
      );
    },
    DashBoardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashBoardScreen(),
      );
    },
    DiscoverRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscoverPage(),
      );
    },
    InboxRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InboxPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainHomePage(),
      );
    },
    MainHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainHomeScreen(),
      );
    },
    MallRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MallPage(),
      );
    },
    MallRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MallScreen(),
      );
    },
  };
}

/// generated route for
/// [AccountPage]
class AccountRouter extends PageRouteInfo<void> {
  const AccountRouter({List<PageRouteInfo>? children})
      : super(
          AccountRouter.name,
          initialChildren: children,
        );

  static const String name = 'AccountRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashBoardScreen]
class DashBoardRoute extends PageRouteInfo<void> {
  const DashBoardRoute({List<PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DiscoverPage]
class DiscoverRouter extends PageRouteInfo<void> {
  const DiscoverRouter({List<PageRouteInfo>? children})
      : super(
          DiscoverRouter.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InboxPage]
class InboxRouter extends PageRouteInfo<void> {
  const InboxRouter({List<PageRouteInfo>? children})
      : super(
          InboxRouter.name,
          initialChildren: children,
        );

  static const String name = 'InboxRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainHomePage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainHomeScreen]
class MainHomeRoute extends PageRouteInfo<void> {
  const MainHomeRoute({List<PageRouteInfo>? children})
      : super(
          MainHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MallPage]
class MallRouter extends PageRouteInfo<void> {
  const MallRouter({List<PageRouteInfo>? children})
      : super(
          MallRouter.name,
          initialChildren: children,
        );

  static const String name = 'MallRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MallScreen]
class MallRoute extends PageRouteInfo<void> {
  const MallRoute({List<PageRouteInfo>? children})
      : super(
          MallRoute.name,
          initialChildren: children,
        );

  static const String name = 'MallRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
