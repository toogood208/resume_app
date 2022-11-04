import 'package:flutter/material.dart';
import 'package:resume_app/utils/text_util.dart';

import '../../resume/model/resume_model.dart';

class ResumeViewList extends StatefulWidget {
  final List<Steps> steps;
  const ResumeViewList({Key? key, required this.steps}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  State<ResumeViewList> createState() => ResumeViewListState(steps: steps);
}

class ResumeViewListState extends State<ResumeViewList> {
  final List<Steps> _steps;
  ResumeViewListState({required List<Steps> steps}) : _steps = steps;
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Steps step) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                step.title,
                style:
                   expansionListTitleTextStyle,
              ),
            );
          },
          body: ListTile(
            title: Text.rich(
  TextSpan(
    children: [
      TextSpan(text: step.date,
      style:
      expantionListDateTextStyle),
     
      TextSpan(
        text: step.body,
        
      ),
    
    ],
  ),
)
          ),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}
