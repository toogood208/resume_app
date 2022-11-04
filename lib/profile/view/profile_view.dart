import 'package:flutter/material.dart';
import 'package:resume_app/utils/dimensions.dart';
import 'package:resume_app/utils/text_util.dart';

import '../../widget/profile_widgets/profile_button_widgets.dart';
import '../../widget/profile_widgets/profile_experience_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: profilePagePadding,
      child: Column(
        children: [
           Text(
            "Ikem Frank",
            textAlign: TextAlign.center,
            style: profileNameTextStyle,
          ),
          Text(
            "Mobile Developer",
            textAlign: TextAlign.center,
            style: profileTrackTextStyle,
          ),
         paddingOf30Height,
          SizedBox(
            width:profileDescriptionWidth,
            child: Text(
              "Mobile Developer with specialty in Dart and Flutter with over "
              " 2 years experience in mobile development",
              textAlign: TextAlign.center,
              style:profileDescriptionTextStyle,
            ),
          ),
          profileDescriptionToProfileExperienceHeight,    
          const ProfileExperienceWidgets(),
         profileDescriptionToProfileExperienceHeight,
          const ProfileButtonsWidget()
        ],
      ),
    );
  }
}






