import 'package:flutter/material.dart';
import 'package:softwareBuy/models/software_model.dart';

class SoftwareDetailsScreen extends StatelessWidget {
  const SoftwareDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final software = ModalRoute.of(context)!.settings.arguments as Software;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(software.nome),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              color: theme.colorScheme.surface,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      software.logoUrl,
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.broken_image, size: 120, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    software.nome,
                    style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    software.categoria,
                    style: theme.textTheme.titleMedium?.copyWith(color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'R\$ ${software.preco.toStringAsFixed(2)}',
                    style: theme.textTheme.headlineMedium?.copyWith(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('Licença vitalícia / Pagamento único'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Compra de ${software.nome} iniciada!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Comprar Licença'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle(theme, 'Descrição'),
                  Text(software.descricao, style: theme.textTheme.bodyLarge),

                  const Divider(height: 32),

                  _buildDetailRow(theme, Icons.business, 'Fabricante', software.fabricante),
                  _buildDetailRow(theme, Icons.support_agent, 'Suporte', software.emailSuporte),

                  const Divider(height: 32),

                  _buildSectionTitle(theme, 'Requisitos do Sistema'),
                  Text(software.requisitosSistema, style: theme.textTheme.bodyLarge),

                  const Divider(height: 32),

                  _buildSectionTitle(theme, 'Formas de Pagamento'),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: software.formasPagamento.map((metodo) {
                      return Chip(
                        label: Text(metodo),
                        avatar: const Icon(Icons.check, size: 16),
                        backgroundColor: theme.colorScheme.surface,
                        side: BorderSide(color: Colors.grey[300]!),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(ThemeData theme, IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: theme.colorScheme.primary, size: 24),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                Text(subtitle, style: theme.textTheme.bodyLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(ThemeData theme, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}
