import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeManager extends Cubit<ThemeMode> {
  static const double padding = 8.0;

  ThemeManager() : super(ThemeMode.system);

  void changeTheme(ThemeMode mode) {
    emit(mode);
  }

  ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
      dividerTheme: const DividerThemeData(
        color: Colors.transparent,
        space: padding,
      ),
      useMaterial3: true,
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.amber,
        brightness: Brightness.dark,
      ),
      dividerTheme: const DividerThemeData(
        color: Colors.transparent,
        space: padding,
      ),
      useMaterial3: true,
    );
  }
}
