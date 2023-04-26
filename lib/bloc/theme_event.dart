part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class ThemeChangeEvent extends ThemeEvent{}

class ThemeLightEvent extends ThemeEvent{}

class ThemeDarkEvent extends ThemeEvent{}