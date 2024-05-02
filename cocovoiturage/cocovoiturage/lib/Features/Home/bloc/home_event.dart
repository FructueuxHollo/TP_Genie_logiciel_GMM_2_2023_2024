part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class StatusChange extends HomeEvent {
  String newStatus;
  StatusChange({required this.newStatus});
}
