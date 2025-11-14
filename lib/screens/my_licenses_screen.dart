import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      fabricante: 'TechCorp Soluções',
      emailSuporte: 'suporte@techcorp.com',
      requisitosSistema: 'Windows 10/11, 8GB RAM, 1GB HD',
      formasPagamento: ['Cartão de Crédito', 'Pix', 'Boleto'],
      licenseKey: "VCWA2X-24412-44165"
    ),
  ];

  void _showManageMenu(BuildContext context, Software software) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) {
        return Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Gerenciar: ${software.nome}',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.vpn_key_outlined),
              title: const Text('Ver Chave de Licença'),
              onTap: () {
                Navigator.pop(ctx);
                _showLicenseKeyDialog(context, software);
              },
            ),

            ListTile(
              leading: const Icon(Icons.support_agent_outlined),
              title: const Text('Contatar Suporte'),
              subtitle: Text(software.emailSuporte),
              onTap: () {
                Navigator.pop(ctx);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Abrindo app de e-mail para ${software.emailSuporte}...')),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.receipt_long_outlined),
              title: const Text('Ver Fatura da Compra'),
              subtitle: Text('Pagamento único de R\$ ${software.preco}'),
              onTap: () {
                Navigator.pop(ctx);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Função de fatura não implementada.')),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }

  void _showLicenseKeyDialog(BuildContext context, Software software) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Chave de Licença'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Software: ${software.nome}'),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  software.licenseKey,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'monospace'),
                ),
              ),
            ],
          ),
          actions: [
            TextButton.icon(
              icon: const Icon(Icons.copy_outlined, size: 18),
              label: const Text('Copiar'),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: software.licenseKey));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Chave copiada para a área de transferência!')),
                );
              },
            ),
            TextButton(
              child: const Text('Fechar'),
              onPressed: () {
                Navigator.pop(ctx);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Licenças'),
      ),
      body: softwaresAdquiridos.isEmpty
          ? const Center(
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
                      software.logoUrl,
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
                          software.nome,
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          software.categoria,
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.primary,
                    ),
                    onPressed: () {
                      _showManageMenu(context, software);
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