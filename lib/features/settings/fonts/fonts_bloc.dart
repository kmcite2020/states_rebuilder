// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:states_rebuilder/states_rebuilder.dart';

import 'fonts_state.dart';

final FontsBloc fontsBloc = FontsBloc();

class FontsBloc {
  final fontsRM = RM.inject(() => FontsState());
  FontsState get state => fontsRM.state;
  set emit(FontsState x) => fontsRM.state = x;

  /// GETTERS
  // FONT-NAMES
  String get appFont => state.appFont;
  String get topicFont => state.topicFont;
  String get subTopicFont => state.subTopicFont;
  String get codeFont => state.codeFont;
  String get paragraphFont => state.paragraphFont;
  // FONT-SIZES
  double get appFontSize => state.appFontSize;
  double get topicFontSize => state.topicFontSize;
  double get subTopicFontSize => state.subTopicFontSize;
  double get codeFontSize => state.codeFontSize;
  double get paragraphFontSize => state.paragraphFontSize;

  /// SETTERS
  // FONT-NAMES
  void setAppFont(String? x) => emit = state.copyWith(appFont: x);
  void setTopicFont(String? x) => emit = state.copyWith(topicFont: x);
  void setSubTopicFont(String? x) => emit = state.copyWith(subTopicFont: x);
  void setCodeFont(String? x) => emit = state.copyWith(codeFont: x);
  void setParagraphFont(String? x) => emit = state.copyWith(paragraphFont: x);
  // FONT_SIZES
  void setAppFontSize(double? x) => emit = state.copyWith(appFontSize: x);
  void setTopicFontSize(double? x) => emit = state.copyWith(topicFontSize: x);
  void setSubTopicFontSize(double? x) => emit = state.copyWith(subTopicFontSize: x);
  void setCodeFontSize(double? x) => emit = state.copyWith(codeFontSize: x);
  void setParagraphFontSize(double? x) => emit = state.copyWith(paragraphFontSize: x);
}
