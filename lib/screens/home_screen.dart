import 'package:flutter/material.dart';

import '../models/student.dart';


class StatefulHomeScreen extends StatefulWidget {
  const StatefulHomeScreen({super.key});

  @override
  State<StatefulHomeScreen> createState() => _StatefulHomeScreenState();
}

class _StatefulHomeScreenState extends State<StatefulHomeScreen> {

  final List<Student> students = [
    Student(name: "tyler", program: "programming", id: "mad511")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Directory'),
        actions: [
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
            )
          );
        }
      )
    );
  }
}