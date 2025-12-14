
import 'package:flutter/material.dart';

class PupilsPage extends StatelessWidget {
  const PupilsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pupils'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          PupilCard(name: 'Amina'),
          PupilCard(name: 'Mohamed'),
          PupilCard(name: 'Fatima'),
        ],
      ),
    );
  }
}

class PupilCard extends StatelessWidget {
  const PupilCard({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(name),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          
        },
      ),
    );
  }
}
