import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<onTestHomePage>(_homePageMethodTest);
  }

  FutureOr<void> _homePageMethodTest(onTestHomePage event, Emitter<HomeState> emit) async {
    try{
      // TODO: include example of using DIO inside API MANAGER
    }catch (e){
      emit(homePageFailed(message:e.toString()));
    }finally{
      emit(homePageFinished());
    }
  }
}
