import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(const BottomNavigationState());

  TabsRouter? _tabsRouter;

  // void changeBtmIndex(index) => emit(index);
  void switchBtm(index) {
    _tabsRouter?.setActiveIndex(index ?? 0);

    emit(
      BottomNavigationState(
        position: _tabsRouter?.activeIndex ?? 0,
      ),
    );
  }

  void setRouter(TabsRouter tabsRouter) {
    _tabsRouter = tabsRouter;
  }

  TabsRouter? get getTabRouter => _tabsRouter;
}
