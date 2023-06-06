import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_app/extensions.dart';
import 'package:states_rebuilder_app/features/settings/widgets/app_fonts.dart';
import 'package:states_rebuilder_app/features/settings/widgets/border_radius_slider.dart';
import 'package:states_rebuilder_app/features/settings/widgets/material_color.dart';
import 'package:states_rebuilder_app/features/settings/widgets/padding_slider.dart';

import '../../main.dart';
import 'widgets/restore_default.dart';
import 'widgets/theme_mode.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          // Divider(),
          ThemeModeWidget(),
          Divider(),
          AppFontsChanger(),
          Divider(),
          PaddingSliderWidget(),
          Divider(),
          BorderRadiusSliderWidget(),
          Divider(),
          MaterialColorWidget(),
          Divider(),
          RestoreDefaultSettingsWidget(),
          // Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
