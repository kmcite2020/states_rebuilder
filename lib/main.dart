// ignore_for_file: avoid_print, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/home/home_page.dart';
import 'features/settings/settings_bloc.dart';
import 'features/settings/theme/theme.dart';

void main() {
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  // GoogleFonts.config.allowRuntimeFetching = true;
  runApp(const MainApp());
}

class MainApp extends ReactiveStatelessWidget {
  const MainApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      themeMode: settingsBloc.themeMode,
      theme: theme,
      darkTheme: darkTheme,
    );
  }
}

final router = RM.injectNavigator(
  routes: {
    '/': (_) => const HomePage(),
  },
);
