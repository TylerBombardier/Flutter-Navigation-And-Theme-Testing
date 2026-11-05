import 'package:flutter/material.dart';

import '../models/student.dart';


class StatefulHomeScreen extends StatefulWidget {
  const StatefulHomeScreen({
    super.key,
    required this.currentThemeMode,
    required this.onToggleTheme
  });

  final ThemeMode currentThemeMode;
  final VoidCallback onToggleTheme;

  @override
  State<StatefulHomeScreen> createState() => _StatefulHomeScreenState();
}

class _StatefulHomeScreenState extends State<StatefulHomeScreen> {

  final List<Student> students = [
    Student(
      name: "New Student 1",
      program: "Cross Platform Development",
      id: "MAD 512",
    ),
    Student(
      name: "New Student 2",
      program: "Cross Platform Development",
      id: "MAD 512",
    ),
    Student(
      name: "New Student 3",
      program: "Cross Platform Development",
      id: "MAD 512",
    ),
    Student(
      name: "New Student 4",
      program: "Cross Platform Development",
      id: "MAD 512",
    ),
    Student(
      name: "New Student 4",
      program: "Cross Platform Development",
      id: "MAD 512",
    ),
    Student(
      name: "New Student 5",
      program: "Cross Platform Development",
      id: "MAD 512",
    ),
  ];

  void _addNewStudent() {
    setState(() {
      students.add(
        Student(
          name: "New Student ${students.length}",
          program: "Cross Platform Development",
          id: "MAD 512",
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = widget.currentThemeMode == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Directory'),
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
            onPressed: widget.onToggleTheme,
            tooltip: "Theme Change",
          ),
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'About',
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];

          return Card(
            child: ListTile(
              title: Text(student.name),
              subtitle: Text(student.program),
              trailing: Text(student.id),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/student',
                  arguments: student
                );
              },
            )
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewStudent,
        tooltip: 'Add Student',
        child: const Icon(Icons.add),
      ),
    );
  }
}