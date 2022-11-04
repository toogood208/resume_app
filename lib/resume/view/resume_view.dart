import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/resume/model/resume_model.dart';
import 'package:resume_app/resume/view_model/resume_viewmodel.dart';

import '../../utils/dimensions.dart';
import '../../widget/resume_widget/resume_widget.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key? key, required this.isResume}) : super(key: key);
  final bool isResume;
  @override
  Widget build(BuildContext context) {
     final model = Provider.of<ResumeViewModel>(context);
    return SingleChildScrollView(
      padding: profilePagePadding,
      child: SizedBox(
        child: FutureBuilder <List<Steps>>(
            future: isResume? model.getResume(): model.getProfile(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Steps>> snapshot) {
              if (snapshot.hasData) {
                return ResumeViewList(steps: snapshot.data ?? []);
              } else {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            }),
      ),
    );
  }
}
