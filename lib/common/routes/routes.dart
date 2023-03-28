import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/auth/pages/login_page.dart';
import 'package:whatsapp_clone/features/auth/pages/user_info_page.dart';
import 'package:whatsapp_clone/features/auth/pages/verification_page.dart';
import 'package:whatsapp_clone/features/home/pages/home_page.dart';
import 'package:whatsapp_clone/features/welcome/pages/welcome_page.dart';

class Routes {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String verification = 'verification';
  static const String userInfo = 'userInfo';
  static const String home = 'home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(
            builder: (context) => const WelcomePage());
      case login:
        return MaterialPageRoute(
            builder: (context) => const LoginPage());
      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
            builder: (context) => VerificationPage(
                  smsCodeId: args['smsCodeId'],
                  phoneNumber: args['phoneNumber'],
                ));
      case userInfo:
        final String? profileImageUrl = settings.arguments as String?;
        return MaterialPageRoute(
            builder: (context) => UserInfoPage(
                  profileImageUrl: profileImageUrl,
                ));
      case home:
        return MaterialPageRoute(
            builder: (context) => const HomePage());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text('No page route provided'),
                  ),
                ));
    }
  }
}
