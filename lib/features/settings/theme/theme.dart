import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../settings_bloc.dart';

ThemeData get theme => FlexThemeData.light(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: settingsBloc.materialColor),
      useMaterial3: true,
      appBarStyle: FlexAppBarStyle.background,
    ).copyWith(
      useMaterial3: true,
      scaffoldBackgroundColor: settingsBloc.materialColor[100],
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            settingsBloc.borderRadius,
          ),
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: settingsBloc.materialColor.withOpacity(
          .8,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: settingsBloc.materialColor[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            settingsBloc.borderRadius,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: settingsBloc.materialColor[300],
          foregroundColor: settingsBloc.materialColor[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settingsBloc.borderRadius,
            ),
          ),
          minimumSize: Size.fromHeight(
            settingsBloc.buttonsHeight,
          ),
        ),
      ),
    );
ThemeData get darkTheme => FlexThemeData.dark(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: settingsBloc.materialColor),
      useMaterial3: true,
      appBarStyle: FlexAppBarStyle.primary,
    ).copyWith(
      drawerTheme: DrawerThemeData(
        backgroundColor: settingsBloc.materialColor.withOpacity(.8),
      ),
      scaffoldBackgroundColor: settingsBloc.materialColor[900],
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            settingsBloc.borderRadius,
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: settingsBloc.materialColor[700],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            settingsBloc.borderRadius,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: settingsBloc.materialColor[800],
          foregroundColor: settingsBloc.materialColor[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settingsBloc.borderRadius,
            ),
          ),
          minimumSize: Size.fromHeight(
            settingsBloc.buttonsHeight,
          ),
        ),
      ),
    );
