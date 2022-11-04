import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/dimensions.dart';
import '../../widget/home_widgets/carousel_indicator.dart';
import '../../widget/home_widgets/slider_widget.dart';
import '../view_model/home_view_model.dart';

class PotraitView extends StatelessWidget {
  const PotraitView({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
     final model = Provider.of<HomeViewModel>(context);
    return Column(
        children: [
          paddingOf30Height,
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: indicators(model.page.length, model.activePage)),
          SizedBox(
            height: tabHeight,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              itemCount: model.page.length,
              pageSnapping: true,
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == model.activePage;
                return slider(
                  model.page,
                  pagePosition,
                  active,
                );
              },
              controller: pageController,
              onPageChanged: (page) {
                model.changePage(page);
              },
            ),
          ),
          model.buildPage(model.activePage),
        ],
      );
  }
}