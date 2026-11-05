import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/student_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Directory',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo
        ),
        useMaterial3: true
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const StatefulHomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/student': (context) => const StudentDetailScreen()
      },
    );
  }
}


