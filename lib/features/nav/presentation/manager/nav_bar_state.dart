part of 'nav_bar_cubit.dart';

@immutable
abstract class NavBarState {}

class NavBarInitial extends NavBarState {}

class Changed extends NavBarState {
  final int index;

  Changed(this.index);
}
