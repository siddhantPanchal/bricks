import 'package:get_it/get_it.dart';
import 'package:template/core/theme/theme_manager.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  locator.allowReassignment = false;
  locator.registerSingleton<ThemeManager>(ThemeManager());
}
