import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_app/utils/colors_util.dart';

class ThemeUtil with ChangeNotifier {
  bool isLightTheme;

  ThemeUtil({required this.isLightTheme});

  ThemeData get getThemeData => isLightTheme ? lightTheme : darkTheme;

  set setThemeData(bool val) {
    if (val) {
      isLightTheme = true;
    } else {
      isLightTheme = false;
    }
    notifyListeners();
  }
   late ThemeData selectedTheme;
   late Timer timer;

  selectTheme() {
    // Current time
    DateTime now = DateTime.now();
    // Dark theme start time evening 7 pm
    DateTime darkThemeStartTime = DateTime(now.year, now.month, now.day, 19);
    // Dark theme to Light switch happen at 6 am
    DateTime darkThemeEndTime = DateTime(now.year, now.month, now.day, 6);

    // time left to change the theme
    int timerSeconds;

    // if current time is after 6 am & before 7 pm then light theme else dark theme
    if (now.compareTo(darkThemeEndTime) > 0 && now.compareTo(darkThemeStartTime) < 0) {
      // time between 6 am and 7 pm
      selectedTheme = lightTheme;
      // theme will be changed at 7 pm
      timerSeconds = darkThemeStartTime.difference(now).inSeconds;
    } else if(now.compareTo(darkThemeStartTime) > 0) {
      // time after 7 pm
      selectedTheme = darkTheme;
      DateTime nextDayMorningTime = darkThemeStartTime.add(const Duration(days: 1));
      timerSeconds = nextDayMorningTime.difference(now).inSeconds;
    } else {
      // time before 6 am
      selectedTheme = darkTheme;
      timerSeconds = darkThemeEndTime.difference(now).inSeconds;
    }

    timer = Timer(
      Duration(seconds: timerSeconds),
      () {
       //_selectTheme will be called after speciefied time
        selectTheme();
      notifyListeners();
      },
    );
  }
}

final darkTheme = ThemeData(
  primaryColor: Colors.black,
  
  backgroundColor: const Color(0xFF000000),
  dividerColor: Colors.black54, colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.grey).copyWith(
      secondary: Colors.black, brightness: Brightness.dark,),
);

final lightTheme = ThemeData(
  primaryColor: Colors.white,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFFE5E5E5),
  dividerColor: Colors.white54, colorScheme: ColorScheme.fromSwatch(primarySwatch: swatchColor).copyWith(secondary: Colors.black),
);