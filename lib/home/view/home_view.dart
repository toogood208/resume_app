import 'package:flutter/material.dart';
import 'landscape_view.dart';
import 'portrait_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.8, initialPage: 1);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {   
    return Scaffold(     
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
              ? SingleChildScrollView(
                  child: PotraitView(pageController: pageController),
                )
              :LandscapeView(pageController: pageController),
        ),
      ),
    );
  }
}




