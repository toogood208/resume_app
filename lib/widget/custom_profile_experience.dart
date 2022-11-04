import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_app/utils/text_util.dart';

class CustomProfileExperience extends StatelessWidget {
  const CustomProfileExperience({
    Key? key,
    required this.iconFa,
    required this.downText,
    required this.whenClicked
  }) : super(key: key);
  final FaIcon iconFa;
  final String downText;
  final Function() whenClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: whenClicked, icon: iconFa),
        Text(
          downText,
          textAlign: TextAlign.center,
          style: profileExperienceBottonTextStyle,
        ),
      ],
    );
  }
}
