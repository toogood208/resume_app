import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/profile/view_model/profile_view_model.dart';
import '../custom_profile_experience.dart';

class ProfileExperienceWidgets extends StatelessWidget {
  const ProfileExperienceWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final model = Provider.of<ProfileViewModel>(context);
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomProfileExperience(
            iconFa: const FaIcon(FontAwesomeIcons.twitter),
            downText: "Twitter",
            whenClicked: () async {
              model.launch.launchLink(link: "https://twitter.com/TooGood208");
            
            },
          ),
          CustomProfileExperience(
            iconFa: const FaIcon(FontAwesomeIcons.facebook),
            downText: "Facebook",
            whenClicked: () async {
               model.launch.launchLink(link: "https://web.facebook.com/frank.ik.547");
              
            },
          ),
          CustomProfileExperience(
            iconFa: const FaIcon(FontAwesomeIcons.linkedin),
            downText: "LinkedIn",
            whenClicked: () async {
               model.launch.launchLink(link: "https://www.linkedin.com/in/ikem-frank-498950160");            
            },
          ),
        ],
      );
  }
}
