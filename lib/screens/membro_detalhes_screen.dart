import 'package:flutter/material.dart';
import 'package:memobile/models/membro_equipe_model.dart';

class MembroDetalhesScreen extends StatelessWidget {
  final MembroEquipe membro;

  const MembroDetalhesScreen({super.key, required this.membro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(membro.nome),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(membro.fotoUrl),
            ),
            const SizedBox(height: 20),
            Text(
              membro.nome,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              membro.cursoPeriodo,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
              textAlign: TextAlign.center,
            ),
            const Divider(height: 30, thickness: 1.2),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Contribuição',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              membro.contribuicao,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Biografia',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              membro.bio,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}