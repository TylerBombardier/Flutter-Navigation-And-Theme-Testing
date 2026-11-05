import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Center(
        child: Column(
          children: [
            const Center(
                child: Text("Press this button to escape your doom...")
            ),
            const SizedBox(height: 8),
            const Icon(
              Icons.arrow_downward,
              size: 24,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Escape'),
            )
          ]
        )
      )
    );
  }
}