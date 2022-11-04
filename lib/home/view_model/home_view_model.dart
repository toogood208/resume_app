import 'package:flutter/material.dart';

import '../../profile/view/profile_board.dart';
import '../../profile/view/profile_view.dart';
import '../../resume/view/resume_board.dart';
import '../../resume/view/resume_view.dart';

class HomeViewModel with ChangeNotifier {
  int activePage = 1;

  List page = <Widget>[
    const ResumeBoard(
      isResume: false,
    ),
    const ProfileBoard(),
    const ResumeBoard(
      isResume: true,
    ),
  ];

  changePage(page) {
    activePage = page;
    notifyListeners();
  }

  buildPage(currentIndex) {
  if (currentIndex == 0) {
    return const ResumeView(
      isResume: false,
    );
  } else if (currentIndex == 1) {
    return const ProfileView();
  } else {
    return const ResumeView(
      isResume: true,
    );
  }
}
}
