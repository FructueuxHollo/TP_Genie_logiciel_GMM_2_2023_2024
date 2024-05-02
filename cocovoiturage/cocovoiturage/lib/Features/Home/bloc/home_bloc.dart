import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cocovoiturage/core/di.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<StatusChange>(_changeStatus);
  }

  FutureOr<void> _changeStatus(StatusChange event, Emitter<HomeState> emit) {
    print("here we go");
    emit(state.copyWith(status: event.newStatus));
  }
}
