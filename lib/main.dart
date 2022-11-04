

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/utils/muliti_providers.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
   runApp(
  MultiProvider(
    providers:multiProviders,
    child: const MyApp()), // Wrap your app  
  
);
}


