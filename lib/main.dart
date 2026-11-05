import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/student_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme(){
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Directory',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.light
        )
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark
        )
      ),
      themeMode: _themeMode,
      initialRoute: '/',
      routes: {
        '/': (context) => StatefulHomeScreen(
          currentThemeMode: _themeMode,
          onToggleTheme: _toggleTheme,
        ),
        '/about': (context) => const AboutScreen(),
        '/student': (context) => const StudentDetailScreen()
      },
    );
  }
}


