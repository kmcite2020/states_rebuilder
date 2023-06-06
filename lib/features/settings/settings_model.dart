// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class SettingsModel extends Equatable {
  final String userName;

  final double padding;
  final double topicNameFontSize;
  final double textSize;
  final int themeModeIndex;
  final int materialColorIndex;
  final double borderRadius;
  final double buttonsHieght;

  const SettingsModel({
    this.userName = '',
    this.padding = 8.0,
    this.topicNameFontSize = 2.0,
    this.textSize = 2.0,
    this.themeModeIndex = 1,
    this.materialColorIndex = 0,
    this.borderRadius = 8.0,
    this.buttonsHieght = 80,
  });
  @override
  List<Object> get props {
    return [
      userName,
      padding,
      topicNameFontSize,
      textSize,
      themeModeIndex,
      materialColorIndex,
      borderRadius,
      buttonsHieght,
    ];
  }

  @override
  bool get stringify => true;

  SettingsModel copyWith({
    String? userName,
    double? padding,
    double? topicNameFontSize,
    double? textSize,
    int? themeModeIndex,
    int? materialColorIndex,
    double? borderRadius,
    double? buttonsHieght,
  }) {
    return SettingsModel(
      userName: userName ?? this.userName,
      padding: padding ?? this.padding,
      topicNameFontSize: topicNameFontSize ?? this.topicNameFontSize,
      textSize: textSize ?? this.textSize,
      themeModeIndex: themeModeIndex ?? this.themeModeIndex,
      materialColorIndex: materialColorIndex ?? this.materialColorIndex,
      borderRadius: borderRadius ?? this.borderRadius,
      buttonsHieght: buttonsHieght ?? this.buttonsHieght,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'padding': padding,
      'topicNameFontSize': topicNameFontSize,
      'textSize': textSize,
      'themeModeIndex': themeModeIndex,
      'materialColorIndex': materialColorIndex,
      'borderRadius': borderRadius,
      'buttonsHieght': buttonsHieght,
    };
  }

  factory SettingsModel.fromMap(Map<String, dynamic> map) {
    return SettingsModel(
      userName: map['userName'] as String,
      padding: map['padding'] as double,
      topicNameFontSize: map['topicNameFontSize'] as double,
      textSize: map['textSize'] as double,
      themeModeIndex: map['themeModeIndex'] as int,
      materialColorIndex: map['materialColorIndex'] as int,
      borderRadius: map['borderRadius'] as double,
      buttonsHieght: map['buttonsHieght'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory SettingsModel.fromJson(String source) => SettingsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
