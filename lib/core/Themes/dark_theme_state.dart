part of 'dark_theme_cubit.dart';

@immutable
abstract class DarkThemeState {
  final bool darkTheme;

  DarkThemeState(this.darkTheme);
}

class DarkThemeInitial extends DarkThemeState {
  DarkThemeInitial(super.darkTheme);
}

class SetDarkTheme extends DarkThemeState {
  final bool darkTheme;

  SetDarkTheme({required this.darkTheme}) : super(darkTheme);
}
