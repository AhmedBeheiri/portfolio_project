import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'dark_theme_prefrences.dart';

part 'dark_theme_state.dart';

class DarkThemeCubit extends Cubit<DarkThemeState> {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    emit(SetDarkTheme(darkTheme: value));
  }

  DarkThemeCubit() : super(DarkThemeInitial(false));
}
