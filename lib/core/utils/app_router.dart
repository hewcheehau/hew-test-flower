import 'package:auto_route/auto_route.dart';
import 'package:my_flower/app.dart';
import 'package:my_flower/features/home/view/main_home_screen.dart';
import 'package:my_flower/features/mall/view/mall_screen.dart';

part 'app_router.gr.dart';

@RoutePage(name: "HomeRouter")
class MainHomePage extends AutoRouter {
  const MainHomePage({super.key});
}

@RoutePage(name: "MallRouter")
class MallPage extends AutoRouter {
  const MallPage({super.key});
}

@RoutePage(name: "DiscoverRouter")
class DiscoverPage extends AutoRouter {
  const DiscoverPage({super.key});
}

@RoutePage(name: "InboxRouter")
class InboxPage extends AutoRouter {
  const InboxPage({super.key});
}

@RoutePage(name: "AccountRouter")
class AccountPage extends AutoRouter {
  const AccountPage({super.key});
}

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: DashBoardRoute.page,
            path: "/dashboard",
            initial: true,
            children: [
              AutoRoute(page: HomeRouter.page,children: [
                AutoRoute(page: MainHomeRoute.page, path: "")
              ]),
              AutoRoute(page: MallRouter.page,children: [
                AutoRoute(page: MallRoute.page, path: "")
              ]),
              AutoRoute(page: DiscoverRouter.page,children: [
                AutoRoute(page: MainHomeRoute.page, path: "")
              ]),
              AutoRoute(page: InboxRouter.page,children: [
                AutoRoute(page: MainHomeRoute.page, path: "")
              ]),
              AutoRoute(page: AccountRouter.page,children: [
                AutoRoute(page: MainHomeRoute.page, path: "")
              ])
            ])
      ];
}
