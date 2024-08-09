part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class homePageLoading extends HomeState {}
class homePageFailed extends HomeState {
  final String message;

  homePageFailed({required this.message});
}
class homePageSuccess extends HomeState {}
class homePageFinished extends HomeState {}
