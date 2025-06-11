import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final workouts = [
      'Full Body Workout',
      'Cardio Blast',
      'Leg Day',
      'Yoga Flow',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('FitBuddy'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          final name = workouts[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              title: Text(name),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
