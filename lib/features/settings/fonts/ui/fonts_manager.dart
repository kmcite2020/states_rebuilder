// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_app/extensions.dart';
import 'package:states_rebuilder_app/features/settings/fonts/fonts_bloc.dart';

import 'generic_font_with_size_changer.dart';

class FontsManager extends ReactiveStatelessWidget {
  const FontsManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          'FONTS MANAGER'.text,
          GenericFontWithSizeChanger(
            fontName: fontsBloc.topicFont,
            fontSize: fontsBloc.topicFontSize,
            settingsName: 'Topic Font',
            onFontChanged: fontsBloc.setTopicFont,
            onFontSizeChanged: fontsBloc.setTopicFontSize,
          ),
          GenericFontWithSizeChanger(
            fontName: fontsBloc.subTopicFont,
            fontSize: fontsBloc.subTopicFontSize,
            settingsName: 'Subtopic Font',
            onFontChanged: fontsBloc.setSubTopicFont,
            onFontSizeChanged: fontsBloc.setSubTopicFontSize,
          ),
          GenericFontWithSizeChanger(
            fontName: fontsBloc.codeFont,
            fontSize: fontsBloc.codeFontSize,
            settingsName: 'Code Font',
            onFontChanged: fontsBloc.setCodeFont,
            onFontSizeChanged: fontsBloc.setCodeFontSize,
          ),
          GenericFontWithSizeChanger(
            fontName: fontsBloc.paragraphFont,
            fontSize: fontsBloc.paragraphFontSize,
            settingsName: 'Paragraph Font',
            onFontChanged: fontsBloc.setParagraphFont,
            onFontSizeChanged: fontsBloc.setParagraphFontSize,
          ),
        ],
      ).pad,
    );
  }
}
