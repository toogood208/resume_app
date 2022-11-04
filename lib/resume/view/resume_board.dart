import 'package:flutter/material.dart';
import 'package:resume_app/utils/colors_util.dart';
import 'package:resume_app/utils/dimensions.dart';
import 'package:resume_app/utils/text_util.dart';

class ResumeBoard extends StatelessWidget {
  const ResumeBoard({super.key, required this.isResume});

  final bool isResume;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: resumeBoardPadding,
      decoration:resumeBoardStyle,
      child: Column(
        children: [
          toResumeBoardBigText,
          Text(
           isResume? "Mobile Developer":"Portfolio",
            style: resumeBoardTextStyle,
          ),
          Text(
            isResume? "\$7-\$8 monthly":"Email: ikemfrankuzoma@gmail.com",
            style: resumeChargeStyle,
          ),
          Divider(
            color: dividerColor,
          ),
          toResumeBoardBigText,
          Expanded(
            child: Text(
              isResume?
              "Accomplished Mobile Application Developer"
              "who is able to create mobile applications for"
              " every mobile software operating system platform."
              " Adept at developing apps based on customer specifications,"
              :"I am Junior Mobile developer able"
              " to build a Mobile presence from the ground up - from concept,"
              " navigation, layout and programming to UX and SEO."
              " Skilled at writing well-designed, testable and efficient"
              ,
              textAlign: TextAlign.center,
              style: resumeChargeStyle,
            ),
          )
        ],
      ),
    );
  }
}
