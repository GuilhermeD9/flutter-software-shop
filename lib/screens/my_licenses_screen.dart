import 'package:flutter/material.dart';

import '../models/software_model.dart';

class MyLicensesScreen extends StatelessWidget {
  const MyLicensesScreen({super.key});


  final List<Software> softwaresAdquiridos = const [
    Software(
      id: '2',
      nome: 'CRM Vendas+',
      categoria: 'Gestão de Clientes (CRM)',
      descricao: 'Aumente suas vendas com nosso sistema de CRM intuitivo.',
      preco: 149.90,
      logoUrl: 'assets/images/software_crm.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Licenças'), // Título atualizado
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: softwaresAdquiridos.isEmpty
          ? const Center(
        child: Text(
          'Você ainda não possui nenhuma licença.',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      )
          : ListView.builder(
        itemCount: softwaresAdquiridos.length,
        itemBuilder: (context, index) {
          final software = softwaresAdquiridos[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      software.logoUrl, // Campo atualizado
                      width: 100,
                      height: 80,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image_not_supported),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          software.nome, // Campo atualizado
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          software.categoria, // Campo atualizado
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[700]),
                    onPressed: () {
                      // Lógica para ver detalhes da licença, baixar, etc.
                    },
                    child: const Text('Gerenciar'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}