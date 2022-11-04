


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'app_scroll_behavior.dart';
import 'home/view/home_view.dart';
import 'utils/theme_util.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// Timer will be required to change the theme after some time.

  @override
  void initState() {
    Provider.of<ThemeUtil>(context, listen: false).selectTheme();

    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ThemeUtil>(context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: ((context, child) => MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: false,
            scrollBehavior: AppScrollBehavior(),
            useInheritedMediaQuery: true,
            theme: model.selectedTheme,
            home: const HomeView(),
          )),
    );
  }
}
