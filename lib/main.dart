import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:fooddelevery/views/view_self.dart';
import 'package:provider/provider.dart';
import 'core/core.dart' as core;

FirebaseAuth auth = FirebaseAuth.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await core.LocalManager.getinstenceinit();
  runApp(
    MultiProvider(
      providers: [...?core.Appproviders.instence?.dependItems],
      child: const MyApp(),
    ),
  );

  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, core.ChangeTheme theme, child) {
      bool dark = theme.isDark;
      return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness:
                  dark ? Brightness.light : Brightness.light,
              systemNavigationBarColor: Colors.transparent,
              systemNavigationBarIconBrightness:
                  dark ? Brightness.light : Brightness.light),
          child: const MaterialApp(
            title: "Food -E",
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          ));
    }));
  }
}
