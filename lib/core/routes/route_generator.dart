import 'package:asthma_management/core/routes/route_names.dart';
import 'package:asthma_management/views/home/homeView.dart';
import 'package:asthma_management/views/login/view/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  ///Routes are generated by this function
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      ///All views are registered here with appropriate page transition in this format
      // case RouteNames.splashScreen:
      //   return CupertinoPageRoute(builder: (context) => SplashScreen());
      //   break;
      case RouteNames.home:
        return MaterialPageRoute(builder: (context) => Home());
        break;
      case RouteNames.login:
        return MaterialPageRoute(builder: (context) => LogIn());

      default:
        return _errorRoute();
    }
  }

  ///Custom error route to ease debugging of unregistered routes
  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(
      builder: (context) => Scaffold(
          appBar: AppBar(
              title: Text(
            'Page not found',
            style: TextStyle(color: Colors.red),
          )),
          body: Center(
            child: Text(
              'Error! Page not found',
              style: TextStyle(color: Colors.red),
            ),
          )),
    );
  }
}
