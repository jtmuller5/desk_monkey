import 'package:auto_route/auto_route.dart';
import 'package:desk_monkey/services/get_it.dart';
import 'package:desk_monkey/services/services.dart';
import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'app/app_router.gr.dart';
import 'app/themes/dark_theme.dart';
import 'app/themes/light_theme.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await ThemeManager.initialise();
  await speechService.initializeSpeechService();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.light,
      lightTheme: lightTheme,
      darkTheme: darkTheme,
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        themeMode: themeMode,
        theme: regularTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        builder: (context, nativeNavigator) {
          return ExtendedNavigator.builder<AppRouter>(
            router: AppRouter(),
            name: 'topNav',
            builder: (context, child) => child,
          )(context, nativeNavigator);
        },
      ),
    );
  }
}
