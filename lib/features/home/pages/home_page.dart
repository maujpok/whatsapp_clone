import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/custom_icon_button.dart';
import 'package:whatsapp_clone/features/home/pages/calls_home_page.dart';
import 'package:whatsapp_clone/features/home/pages/chat_home_pages.dart';
import 'package:whatsapp_clone/features/home/pages/status_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Whatsapp Clone',
            style: TextStyle(letterSpacing: 1),
          ),
          elevation: 1,
          actions: [
            CustomIconButton(onTap: () {}, icon: Icons.camera_alt_outlined, iconSize: 25),
            CustomIconButton(onTap: () {}, icon: Icons.search, iconSize: 25),
            CustomIconButton(onTap: () {}, icon: Icons.more_vert, iconSize: 25),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
            splashFactory: NoSplash.splashFactory,
          ),
        ),
        body: const TabBarView(children: [ChatHomePage(), StatusHomePage(), CallsHomePage()]),
      ),
    );
  }
}
