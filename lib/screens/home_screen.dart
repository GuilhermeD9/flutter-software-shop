import 'package:flutter/material.dart';
import 'package:memobile/models/software_model.dart';
import 'package:memobile/widgets/software_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Software> softwaresDisponiveis = const [
    Software(
      id: '1',
      nome: 'Gestor Financeiro Pro',
      categoria: 'Financeiro',
      descricao: 'Software completo para gestão de fluxo de caixa, faturamento e contas a pagar/receber da sua empresa.',
      preco: 299.90,
      logoUrl: 'assets/images/software_fin.png', //
    ),
    Software(
      id: '2',
      nome: 'CRM Vendas+',
      categoria: 'Gestão de Clientes (CRM)',
      descricao: 'Aumente suas vendas com nosso sistema de CRM intuitivo, funil de vendas e automação de marketing.',
      preco: 149.90,
      logoUrl: 'assets/images/software_crm.png',
    ),
    Software(
      id: '3',
      nome: 'Controle de Estoque Fácil',
      categoria: 'Gestão (ERP)',
      descricao: 'Sistema simples para controle de entrada e saída de mercadorias, inventário e relatórios de estoque.',
      preco: 99.00,
      logoUrl: 'assets/images/software_estoque.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Softwares'),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: softwaresDisponiveis.length,
        itemBuilder: (context, index) {
          final software = softwaresDisponiveis[index];

          return SoftwareCard(
            software: software,
            onButtonPressed: () {
              Navigator.pushNamed(context, '/software-details', arguments: software);
            },
          );
        },
      ),
    );
  }
}