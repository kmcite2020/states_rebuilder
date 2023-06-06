import 'dart:convert';

class FontsState {
  final String appFont;
  final String topicFont;
  final String subTopicFont;
  final String codeFont;
  final String paragraphFont;
  final double appFontSize;
  final double topicFontSize;
  final double subTopicFontSize;
  final double codeFontSize;
  final double paragraphFontSize;
  FontsState({
    this.appFont = 'Dosis',
    this.topicFont = 'Dosis',
    this.subTopicFont = 'Dosis',
    this.codeFont = 'Dosis',
    this.paragraphFont = 'Dosis',
    this.appFontSize = 1,
    this.topicFontSize = 1,
    this.subTopicFontSize = 1,
    this.codeFontSize = 1,
    this.paragraphFontSize = 1,
  });

  FontsState copyWith({
    String? appFont,
    String? topicFont,
    String? subTopicFont,
    String? codeFont,
    String? paragraphFont,
    double? appFontSize,
    double? topicFontSize,
    double? subTopicFontSize,
    double? codeFontSize,
    double? paragraphFontSize,
  }) {
    return FontsState(
      appFont: appFont ?? this.appFont,
      topicFont: topicFont ?? this.topicFont,
      subTopicFont: subTopicFont ?? this.subTopicFont,
      codeFont: codeFont ?? this.codeFont,
      paragraphFont: paragraphFont ?? this.paragraphFont,
      appFontSize: appFontSize ?? this.appFontSize,
      topicFontSize: topicFontSize ?? this.topicFontSize,
      subTopicFontSize: subTopicFontSize ?? this.subTopicFontSize,
      codeFontSize: codeFontSize ?? this.codeFontSize,
      paragraphFontSize: paragraphFontSize ?? this.paragraphFontSize,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appFont': appFont,
      'topicFont': topicFont,
      'subTopicFont': subTopicFont,
      'codeFont': codeFont,
      'paragraphFont': paragraphFont,
      'appFontSize': appFontSize,
      'topicFontSize': topicFontSize,
      'subTopicFontSize': subTopicFontSize,
      'codeFontSize': codeFontSize,
      'paragraphFontSize': paragraphFontSize,
    };
  }

  factory FontsState.fromMap(Map<String, dynamic> map) {
    return FontsState(
      appFont: map['appFont'] as String,
      topicFont: map['topicFont'] as String,
      subTopicFont: map['subTopicFont'] as String,
      codeFont: map['codeFont'] as String,
      paragraphFont: map['paragraphFont'] as String,
      appFontSize: map['appFontSize'] as double,
      topicFontSize: map['topicFontSize'] as double,
      subTopicFontSize: map['subTopicFontSize'] as double,
      codeFontSize: map['codeFontSize'] as double,
      paragraphFontSize: map['paragraphFontSize'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory FontsState.fromJson(String source) => FontsState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FontsState(appFont: $appFont, topicFont: $topicFont, subTopicFont: $subTopicFont, codeFont: $codeFont, paragraphFont: $paragraphFont, appFontSize: $appFontSize, topicFontSize: $topicFontSize, subTopicFontSize: $subTopicFontSize, codeFontSize: $codeFontSize, paragraphFontSize: $paragraphFontSize)';
  }

  @override
  bool operator ==(covariant FontsState other) {
    if (identical(this, other)) return true;

    return other.appFont == appFont &&
        other.topicFont == topicFont &&
        other.subTopicFont == subTopicFont &&
        other.codeFont == codeFont &&
        other.paragraphFont == paragraphFont &&
        other.appFontSize == appFontSize &&
        other.topicFontSize == topicFontSize &&
        other.subTopicFontSize == subTopicFontSize &&
        other.codeFontSize == codeFontSize &&
        other.paragraphFontSize == paragraphFontSize;
  }

  @override
  int get hashCode {
    return appFont.hashCode ^
        topicFont.hashCode ^
        subTopicFont.hashCode ^
        codeFont.hashCode ^
        paragraphFont.hashCode ^
        appFontSize.hashCode ^
        topicFontSize.hashCode ^
        subTopicFontSize.hashCode ^
        codeFontSize.hashCode ^
        paragraphFontSize.hashCode;
  }
}
