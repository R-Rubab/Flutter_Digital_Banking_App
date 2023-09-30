// import 'package:flutter/material.dart';
// import 'package:flutter_application_4/section/homepage.dart';
// import 'package:flutter_application_4/util_routes_link/route_name.dart';

// import '../auth/login.dart';
// import '../auth/phone.dart';
// import '../auth/signup.dart';
// import '../auth/splashscreen.dart';
// import '../postScreen/postscreen.dart';

// Route<dynamic> generatorRoute(RouteSettings setting) {
//   switch (setting.name) {
//     case RoutesNames.myhomepage:
//       return MaterialPageRoute(builder: (context) => const MyHomePage());

//     case RoutesNames.splashScreen:
//       return MaterialPageRoute(builder: (context) => const SplashScreen());
//     case RoutesNames.loginScreen:
//       return MaterialPageRoute(builder: (context) => const LoginScreen());

//     case RoutesNames.signScreen:
//       return MaterialPageRoute(builder: (context) => const SignUpScreen());
//     case RoutesNames.phoneNumber:
//       return MaterialPageRoute(builder: (context) => const PhoneNumbers());
//     case RoutesNames.postScreen:
//       return MaterialPageRoute(builder: (context) => const PostScreen());

//     default:
//       return MaterialPageRoute(builder: (context) {
//         return const Scaffold(
//           body: Center(
//             child: Text(
//               'No define Route',
//               style: TextStyle(fontSize: 30),
//             ),
//           ),
//         );
//       });
//   }
// }
