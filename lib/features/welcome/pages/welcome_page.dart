import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/routes/routes.dart';
import 'package:whatsapp_clone/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp_clone/features/welcome/widgets/language_button.dart';
import 'package:whatsapp_clone/features/welcome/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  navigateToLoginPage(context) {
    Navigator.of(context).restorablePushNamed(Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(height: 40),
        Expanded(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 60, vertical: 20),
            child: Image.asset(
              'assets/images/circle.png',
              color: context.theme.circleImageColor,
            ),
          ),
        )),
        const SizedBox(height: 40),
        Expanded(
            child: Column(
          children: [
            const Text(
              'Welcome to Whatsapp',
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const PrivacyAndTerms(),
            CustomElevatedButton(
                onPressed: () => navigateToLoginPage(context),
                text: 'AGREE AND CONTINUE'),
            const SizedBox(height: 50),
            const LanguageButton()
          ],
        ))
      ]),
    );
  }
}
