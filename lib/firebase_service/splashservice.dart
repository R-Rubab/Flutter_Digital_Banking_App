import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/auth/login.dart';

class SplashService {
  onlogin(BuildContext context) {
    // final auth = FirebaseAuth.instance;
    // final user = auth.currentUser;
    // if (user != null) {
    // Timer(const Duration(seconds: 3), () {
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => const PostScreen()));
    // Navigator.pushNamed(context, RoutesNames.postScreen);
    // });
    // } else {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
      //     // Navigator.pushNamed(context, RoutesNames.loginScreen);
    });
    // }
  }
}
