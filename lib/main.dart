import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    title: 'Whatsapp Clone',
    home: const WelcomePage()
    );
  }
}
