import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_4/auth/phone.dart';
import 'package:flutter_application_4/auth/signup.dart';
import 'package:flutter_application_4/auth/toast.dart';
import 'package:flutter_application_4/const_colors/const.dart';

import '../postScreen/postscreen.dart';
import '../widgets/formfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  bool loading = false;
  // bool selected = false;
  final email = TextEditingController();
  final password = TextEditingController();
  final formdata = GlobalKey<FormState>();
  // FirebaseAuth auth = FirebaseAuth.instance;
  // late Animation<double> fadeAnimation;
  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }

  // void login() {
  //   setState(() {
  //     loading = true;
  //   });
  //   auth
  //       .createUserWithEmailAndPassword(
  //           email: email.text.toString(), password: password.text.toString())
  //       .then((value) {
  //     Utils().toastMessage(value.user!.email.toString());
  //     setState(() {
  //       loading = false;
  //     });
  //     // Navigator.pushNamed(context, RoutesNames.postScreen);
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => const PostScreen()));
  //   }).onError((error, stackTrace) {
  //     debugPrint(error.toString());
  //     Utils().toastMessage(error.toString());
  //     setState(() {
  //       loading = false;
  //     });
  //   });
  // }

  late Animation<Offset> fadeAnimation;
  late AnimationController fadeAnimationController;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      imagesAnimation();
    });
    fadeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    fadeAnimation = Tween(
      begin: const Offset(-2, 0),
      end: const Offset(0, 0),
    ).animate(fadeAnimationController.view);
  }

  bool isvisible = true;

  imagesAnimation() {
    setState(() {
      if (isvisible) {
        fadeAnimationController.forward();
        isvisible = false;
      } else {
        fadeAnimationController.reverse();
        isvisible = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
          backgroundColor: color,
          // backgroundColor: const Color.fromARGB(255, 196, 244, 119),
          body: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    8.ph,
                    SlideTransition(
                      position: fadeAnimation,
                      child: Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 160,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 12,
                                color: Colors.black,
                                offset: Offset(3, 4),
                              ),
                              BoxShadow(
                                blurRadius: 8,
                                color: Color.fromARGB(255, 28, 26, 26),
                                offset: Offset(-3, -3),
                              ),
                              BoxShadow(
                                blurRadius: 8,
                                color: Color.fromARGB(66, 252, 247, 247),
                                offset: Offset(-3, -3),
                              ),
                            ],
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              transform: GradientRotation(2),
                              begin: Alignment(1, 0),
                              end: Alignment(0, 1),
                              colors: [
                                Color.fromARGB(255, 212, 187, 187),
                                Color.fromARGB(255, 166, 174, 123),
                                Color.fromARGB(255, 229, 232, 183),
                                Color.fromARGB(255, 132, 145, 129),
                              ],
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/imgSplash.png",
                          ),
                        ),
                      ),
                    ),
                    20.ph,
                    Text('Login', style: textStyle3),
                    Column(
                      children: [
                        Form(
                          key: formdata,
                          child: Column(
                            children: [
                              TextFielddForm(
                                keyboardType: TextInputType.emailAddress,
                                label: 'Email',
                                controLer: email,
                                icons: Icons.email_outlined,
                                validation: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter the email';
                                  }
                                  return null;
                                },
                              ),
                              TextFielddForm(
                                label: 'Password',
                                controLer: password,
                                icons: Icons.remove_red_eye_outlined,
                                validation: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter the password';
                                  }
                                  return null;
                                },
                                obscuretext: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PhoneNumbers()));
                            // Navigator.pushNamed(
                            //     context, RoutesNames.phoneNumber);
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Phone Number',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 110.0),
                          child: Text(
                            'Forget Password?',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Buttons(
                      onpress: () {
                        if (formdata.currentState!.validate()) {
                          // login();
                        }
                      },
                      loading: loading,
                      text: 'Login',
                    ),
                    6.ph,
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.black,
                            // height: 10,
                          ),
                        ),
                        Text(
                          ' or Continue with ',
                          style: TextStyle(fontSize: 16),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.black45,
                            // height: 10,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BorderContainer(
                            url: Image.asset('assets/images/google.png'),
                          ),
                          BorderContainer(
                            url: Image.asset('assets/images/linkedin.png'),
                          ),
                          BorderContainer(
                            url: Image.asset('assets/images/facebook.png'),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Not a member? ',
                          style: TextStyle(fontSize: 18),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ));
                            // Navigator.pushNamed(
                            //     context, RoutesNames.signScreen);
                          },
                          child: const Text(
                            'Register Now',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 4, 171, 4),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
