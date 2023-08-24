import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flower/core/constants/app_colors.dart';
import 'package:my_flower/core/constants/string_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_flower/core/widgets/home_nav_bar.dart';
import 'core/utils/app_router.dart';
import 'features/home/cubit/bottom_navigation_cubit.dart';
import 'service_locator.dart';

class MyFlowerApp extends StatelessWidget {
  const MyFlowerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavigationCubit())
      ],
      child: const _MyFlowerAppView());
  }
}


class _MyFlowerAppView extends StatelessWidget {
  const _MyFlowerAppView();

  @override
  Widget build(BuildContext context) {
    final router = sl<AppRouter>();
    return MaterialApp.router(
      title: StringConstants.appName,
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(router, initialDeepLink: "/dashboard"),
      theme: ThemeData(
        primaryColor: AppColors.appMainColor,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.scaffoldColor
      ),
      localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        builder: (context, child) {
          ScreenUtil.init(context);
          return child ?? const SizedBox.shrink();
        },
    );
  }
}

@RoutePage()
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRouter(),
        MallRouter(),
        DiscoverRouter(),
        InboxRouter(),
        AccountRouter()
      ],
      builder: (context, child) {
        /// obtain the scoped TabsRouter controller using context
        /// passs it to btm cubit
        final tabsRouter = AutoTabsRouter.of(context);
        context.read<BottomNavigationCubit>().setRouter(tabsRouter);
        return Scaffold(
          body: child,
          bottomNavigationBar: const HomeNavBar(),
        );
      },
    );
  }
}