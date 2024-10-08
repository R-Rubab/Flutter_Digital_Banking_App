import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/section/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: '', appId: '', messagingSenderId: '', projectId: ''));
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
      // home: const SplashScreen(),
      home: const MyHomePage(),
      // home: const LoginScreen(),
    );
  }
}
