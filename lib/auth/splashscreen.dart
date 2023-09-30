import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/auth/login.dart';
import 'package:flutter_application_4/const_colors/const.dart';
import 'package:flutter_application_4/section/homepage.dart';

import '../firebase_service/splashservice.dart';

//      *************************

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//      *************************
  SplashService splashService = SplashService();
  @override
  void initState() {
    super.initState();
    splashService.onlogin(context);
  }

//      *************************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 90,
            child: Image.asset(
              'assets/images/credit-card.png',
              width: 50,
            ),
          ),
          Positioned(
            top: 60,
            right: 40,
            child: Image.asset(
              'assets/images/dollar.png',
              width: 50,
            ),
          ),
          const Positioned(
            top: 360,
            right: 50,
            child: Icon(
              Icons.monetization_on,
              size: 45,
              color: Colors.black54,
            ),
          ),
          const Positioned(
            top: 270,
            left: 30,
            child: Icon(
              Icons.currency_exchange_rounded,
              size: 50,
              color: Colors.black54,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                15.ph,
                Image.asset('assets/images/imgSplash.png'),
                29.ph,
                Text(
                  'Degital Banking  ',
                  style: textStyle3,
                ),
                Row(
                  children: [
                    Text(
                      'Made for',
                      style: textStyle3,
                    ),
                    17.pw,
                    Container(
                        width: 50,
                        decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )),
                  ],
                ),
                Text(
                  'Digital Users',
                  style: textStyle3,
                ),
                const Text('Spend,earn and track finantail activiy'),
                10.ph,
                Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyHomePage()));
                        // Navigator.pushNamed(context, RoutesNames.myhomepage);
                      },
                      child: Text('Skip',
                          style: textStyle3.copyWith(fontSize: 20)),
                    )),
                    165.pw,
                    Text("Let's Start",
                        style: textStyle3.copyWith(
                            fontSize: 20, letterSpacing: 0)),
                    5.pw,
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                          // Navigator.pushNamed(context, RoutesNames.loginScreen);
                        },
                        child: Transform.rotate(
                          angle: pi / -3,
                          child: const Icon(
                            Icons.arrow_circle_right,
                            size: 45,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
