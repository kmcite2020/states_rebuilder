import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_app/extensions.dart';

class GenericFontWithSizeChanger extends ReactiveStatelessWidget {
  const GenericFontWithSizeChanger({
    super.key,
    required this.fontName,
    required this.fontSize,
    required this.settingsName,
    this.onFontChanged,
    this.onFontSizeChanged,
  });
  final String fontName;
  final double fontSize;
  final String settingsName;
  final void Function(String?)? onFontChanged;
  final void Function(double?)? onFontSizeChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        settingsName.text.pad,
        DropdownButtonFormField(
          value: fontName,
          items: FONTS
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: GoogleFonts.getFont(e),
                  ),
                ),
              )
              .toList(),
          onChanged: onFontChanged,
        ).pad,
        Slider(
          value: fontSize,
          onChanged: onFontSizeChanged,
          min: 0.8,
          max: 1.5,
        ).pad,
      ],
    );
  }
}
