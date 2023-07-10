import 'package:flutter/material.dart';
import 'package:user_interface_for_api/pages/profile_page.dart';
import 'package:user_interface_for_api/pages/profile_settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'profile_page',
      routes: {
        'profile_page':(context) => const ProfilePage(),
        'profile_settings_page':(context) => const ProfileSettingsPage(),
      },
    );
  }
}