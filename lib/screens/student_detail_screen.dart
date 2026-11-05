import 'package:flutter/material.dart';

import '../models/student.dart';

class StudentDetailScreen extends StatelessWidget {
  const StudentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final student = ModalRoute.of(context)!.settings.arguments as Student;

    return Scaffold(
      appBar: AppBar(
        title: Text("${student.name} Details"),
      ),
      body:
        Padding(padding: EdgeInsetsGeometry.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name: ${student.name}"),
              Text("Program: ${student.program}"),
              Text("Code: ${student.id}")
            ]
          ),
        )
      );
  }
}
