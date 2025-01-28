// theme_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState(ThemeMode.light)) {
    on<ToggleThemeEvent>((event, emit) {
      emit(
        state.themeMode == ThemeMode.light
            ? const ThemeState(ThemeMode.dark)
            : const ThemeState(ThemeMode.light),
      );
    });
  }
}
