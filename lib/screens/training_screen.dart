import 'package:flutter/material.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treinos'),
        backgroundColor: const Color(0xff3a57e8),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildTrainingCard(
            context,
            'Treino A',
            'Peito e Tríceps',
            Icons.fitness_center,
          ),
          _buildTrainingCard(
            context,
            'Treino B',
            'Costas e Bíceps',
            Icons.sports_gymnastics,
          ),
          _buildTrainingCard(
            context,
            'Treino C',
            'Pernas e Ombro',
            Icons.directions_run,
          ),
        ],
      ),
    );
  }

  Widget _buildTrainingCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xff3a57e8)),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          // Navegar para detalhes do treino
        },
      ),
    );
  }
}