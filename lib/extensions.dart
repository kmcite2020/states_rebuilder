// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:states_rebuilder_app/features/settings/fonts/fonts_bloc.dart';
import 'package:uuid/uuid.dart';

import 'features/settings/settings_bloc.dart';

// ignore: prefer_const_constructors
String get randomId => Uuid().v4();

extension Stringer on Object? {
  Widget get text => Text(
        toString(),
        style: GoogleFonts.getFont(fontsBloc.appFont),
        textScaleFactor: fontsBloc.appFontSize * appFontFactor,
      );
  Widget get textToCode => Text(
        toString(),
        textScaleFactor: fontsBloc.codeFontSize,
        style: TextStyle(
          fontFamily: GoogleFonts.getFont(fontsBloc.codeFont).fontFamily,
        ),
      );
  Widget get textToTopic => Text(
        toString(),
        textScaleFactor: fontsBloc.topicFontSize,
        style: TextStyle(
          fontFamily: GoogleFonts.getFont(fontsBloc.topicFont).fontFamily,
        ),
      );
  Widget get textToSubTopic => Text(
        toString(),
        textScaleFactor: fontsBloc.subTopicFontSize,
        style: TextStyle(
          fontFamily: GoogleFonts.getFont(fontsBloc.subTopicFont).fontFamily,
        ),
      );
  Widget get textToParagraph => Text(
        toString(),
        textScaleFactor: fontsBloc.paragraphFontSize,
        style: TextStyle(
          fontFamily: GoogleFonts.getFont(fontsBloc.paragraphFont).fontFamily,
        ),
      );

  double get appFontFactor => 1.1;
}

extension Widgeter on Widget {
  Widget get pad => Padding(
        padding: EdgeInsets.all(settingsBloc.padding),
        child: this,
      );
}

List<String> get FONTS => [
      "Azeret Mono",
      "Comfortaa",
      "DM Mono",
      "Dosis",
      "Fira Sans",
      "IBM Plex Mono",
      "Josefin Sans",
      "Montserrat",
      "Space Mono",
      "Ubuntu",
    ];
