part of 'home_bloc.dart';

@immutable
class HomeState {
  String status;
  int? id;
  HomeState({this.id, required this.status});
  HomeState copyWith({String? status, int? id}) =>
      HomeState(status: status ?? this.status, id: id ?? this.id);
}

final class HomeInitial extends HomeState {
  HomeInitial()
      : super(status: "Driver", id: sl<SharedPreferences>().getInt("Id"));
}
