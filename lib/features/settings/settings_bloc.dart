// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import 'settings_model.dart';

// ignore: non_constant_identifier_names
final SettingsBloc settingsBloc = SettingsBloc();

class SettingsBloc {
  SettingsBloc();
  late final stateRM = RM.inject(() => defaultSettingsState);
  SettingsModel get state => stateRM.state;
  set emit(SettingsModel value) => stateRM.state = value;

  /// REACTIVE PROPS
  MaterialColor get materialColor => Colors.primaries[state.materialColorIndex];
  ThemeMode get themeMode => ThemeMode.values[state.themeModeIndex];
  double get padding => state.padding;
  double get borderRadius => state.borderRadius;
  int get materialColorIndex => state.materialColorIndex;
  double get buttonsHeight => state.buttonsHieght;

  /// MODIFIERS FOR PROPS
  void setThemeMode(ThemeMode? value) => emit = state.copyWith(
        themeModeIndex: ThemeMode.values.indexOf(value!),
      );
  // MATERIAL COLOR
  void setMaterialColor(MaterialColor? value) => emit = state.copyWith(
        themeModeIndex: Colors.primaries.indexOf(value!),
      );
  // MATERIAL COLOR INDEX
  void setMaterialColorIndex(int? value) => emit = state.copyWith(materialColorIndex: value);

  void setPadding(double? value) => emit = state.copyWith(padding: value);
  void setBorderRadius(double? v) => emit = state.copyWith(borderRadius: v);
  // OTHERS
  SettingsModel get defaultSettingsState => const SettingsModel();
  bool get isInDefaultState => state == defaultSettingsState;
  void restoreDefaults() => emit = defaultSettingsState;
}
