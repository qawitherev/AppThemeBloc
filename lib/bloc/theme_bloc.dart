import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeLightState()) {
    // on<ThemeLightEvent>((event, emit) {
    //   print('ThemeLightEvent: ThemeLightState emitted');
    //   emit(ThemeLightState());
    // });
    // on<ThemeDarkEvent>((event, emit) {
    //   print('ThemeDarkEvent: ThemeDarkState emitted');
    //   emit(ThemeDarkState());
    // });
    on<ThemeChangeEvent>((event, emit) {
      if (state is ThemeDarkState){
        print('State is ThemeDarkState');
        emit(ThemeLightState());
      }else if (state is ThemeLightState){
        print('State is ThemeLightState');
        emit(ThemeDarkState());
      }
    });
  }
}
