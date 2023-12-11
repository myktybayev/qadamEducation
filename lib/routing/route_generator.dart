import 'package:flutter/material.dart';
import 'package:qadam_education/core/navigation/navigation.dart';
import 'package:qadam_education/features/sign_in/sign_in.dart';

import 'app_roures.dart';

class RouteGenerator {
  static Route<Object?>? generateRoute(RouteSettings settings) {
    final routeName = settings.name;

    switch (routeName) {
      case AppRoutes.signIn:
        // final userCredential = settings.arguments as UserCredential;
        return MaterialPageRoute(
          builder: (context) {
            return const SignIn();
            // return MainPage(userCredential: userCredential);
          },
        );

      case AppRoutes.home:
        // final userCredential = settings.arguments as UserCredential;
        return MaterialPageRoute(
          builder: (context) {
            return const NavigationPage();
            // return MainPage(userCredential: userCredential);
          },
        );

      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute buildRoute(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(
        settings: settings, builder: (BuildContext context) => child);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'ERROR!!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 450.0,
                  width: 450.0,
                  // child: Lottie.asset('assets/lottie/error.json'),
                ),
                Text(
                  'Seems the route you\'ve navigated to doesn\'t exist!!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
