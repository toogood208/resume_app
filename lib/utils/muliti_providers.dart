import 'package:provider/provider.dart';
import 'package:resume_app/home/view_model/home_view_model.dart';
import 'package:resume_app/profile/view_model/profile_view_model.dart';
import 'package:resume_app/resume/view_model/resume_viewmodel.dart';
import 'package:resume_app/utils/theme_util.dart';

var multiProviders = [
  ChangeNotifierProvider<ThemeUtil>(
      create: (context) => ThemeUtil(isLightTheme: true)),
  ChangeNotifierProvider<ResumeViewModel>(
      create: (context) =>ResumeViewModel()),
  ChangeNotifierProvider<ProfileViewModel>(
      create: (context) =>ProfileViewModel()),
  ChangeNotifierProvider<HomeViewModel>(
      create: (context) =>HomeViewModel()),
];
