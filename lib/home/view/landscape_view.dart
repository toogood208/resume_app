import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../widget/home_widgets/carousel_indicator.dart';
import '../../widget/home_widgets/slider_widget.dart';
import '../view_model/home_view_model.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 400.h,
            width: 100.w,
            child: Stack(
              children: [
                PageView.builder(
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
                Positioned(
                  bottom: 30.h,
                  left: 50.w,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          indicators(model.page.length, model.activePage)),
                ),
              ],
            ),
          ),
        ),
        const VerticalDivider(),
        Expanded(child: model.buildPage(model.activePage))
      ],
    );   
  }
}
