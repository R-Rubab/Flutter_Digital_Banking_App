import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'auth/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Degital Backing',
      theme: ThemeData(
        fontFamily: 'Caveat',
        primarySwatch: Colors.green,
      ),

      // onGenerateRoute: (setting) => generatorRoute(setting),
      // home: const PhoneNumbers(),
      home: const SplashScreen(),
      // home: const MyHomePage(),
      // home: const LoginScreen(),
    );
  }
}
