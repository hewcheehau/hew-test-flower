part of 'bottom_navigation_cubit.dart';

class BottomNavigationState extends Equatable {
  final int position;
  const BottomNavigationState({this.position = 0, });

  BottomNavigationState copyWith({
    int? position,
  }) {
    return BottomNavigationState(
        position: position ?? this.position, );
  }

  @override
  List<Object?> get props => [position];
}
