import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/profile/view_model/profile_view_model.dart';
import 'package:resume_app/widget/custom_button.dart';

class ProfileButtonsWidget extends StatelessWidget {
  const ProfileButtonsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final model = Provider.of<ProfileViewModel>(context);
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomButton(
                description: "View Github",
                textColor: Colors.black,
                borderColor: Colors.grey,
                buttonColor: Colors.white,
                whenClikced: () async {
                  model.launch.launchLink(link: "https://github.com/toogood208");
                }),
          ),
          SizedBox(width: 10.w,),
          Expanded(
            child: CustomButton(
                description: "Send Mail",
                textColor: Colors.white,
                buttonColor: Colors.blue,
                whenClikced: () async {
                  const toEmail = "ikemfrankuzoma@gmail.com";
                  const subject = "Hello Frank I have a job for you";
                  const message = "";
                  var link = "mailto:$toEmail?subject=$subject&body$message";
                  model.launch.launchLink(link: link);
                }),
          ),
        ],
      );
  }
}
