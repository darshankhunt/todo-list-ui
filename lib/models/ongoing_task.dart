import 'package:flutter/cupertino.dart';

class OngoingTask {
  String taskName;
  String totalTime;
  String timeDuration;
  Color timeDurationColor;
  int taskPercentage;
  String taskPercentageText;
  String profilePhoto1;
  String profilePhoto2;
  String profilePhoto3;
  Color cardColor;
  OngoingTask({
    required this.timeDurationColor,
    required this.cardColor,
    required this.taskName,
    required this.totalTime,
    required this.timeDuration,
    required this.taskPercentage,
    required this.taskPercentageText,
    required this.profilePhoto1,
    required this.profilePhoto2,
    required this.profilePhoto3,
  });
}
