import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flower/core/constants/app_colors.dart';
import 'package:my_flower/core/utils/app_extension.dart';
import 'package:my_flower/features/home/cubit/bottom_navigation_cubit.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
        builder: (context, state) {
      return BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 5,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          onTap: (value) =>
              context.read<BottomNavigationCubit>().switchBtm(value),
          currentIndex: state.position,
          selectedLabelStyle: const TextStyle(color:AppColors.appMainColor),
          selectedItemColor: AppColors.appMainColor,
          items: [
            BottomNavigationBarItem(
                icon: const _SelectIcon(path: "Nav Icon - Home"),
                activeIcon: const _SelectIcon(path: "Nav Icon - Home Green"),
                label: context.loc.home.toUpperCase()),
            BottomNavigationBarItem(
                icon: const _SelectIcon(path: "Nav Icon - Mall"),
                activeIcon: const _SelectIcon(path: "Nav Icon - Mall Green"),
                label: context.loc.mall.toUpperCase()),
            BottomNavigationBarItem(
                icon: const _SelectIcon(path: "Nav Icon - Discover"),
                activeIcon: const _SelectIcon(path: "Nav Icon - Discover"),
                label: context.loc.discover.toUpperCase()),
            BottomNavigationBarItem(
                icon: const _SelectIcon(path: "Nav Icon - Inbox"),
                activeIcon: const _SelectIcon(path: "Nav Icon - Inbox"),
                label: context.loc.inbox.toUpperCase()),
            BottomNavigationBarItem(
                icon: const _SelectIcon(path: "Nav Icon - Account"),
                activeIcon: const _SelectIcon(path: "Nav Icon - Account"),
                label: context.loc.account.toUpperCase())
          ]);
    });
  }
}


class _SelectIcon extends StatelessWidget {
  const _SelectIcon({required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(path.toPng(), height: 25, width: 25,);
  }
}