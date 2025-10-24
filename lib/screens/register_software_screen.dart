import 'package:flutter/material.dart';

import '../widgets/custom_text_form_field.dart';

class RegisterSoftwareScreen extends StatefulWidget {
  const RegisterSoftwareScreen({super.key});

  @override
  State<RegisterSoftwareScreen> createState() => _RegisterSoftwareScreenState();
}

class _RegisterSoftwareScreenState extends State<RegisterSoftwareScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _categoriaController = TextEditingController();
  final _precoController = TextEditingController();
  final _logoUrlController = TextEditingController();
  final _descricaoController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _categoriaController.dispose();
    _precoController.dispose();
    _logoUrlController.dispose();
    _descricaoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Novo Software'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Preencha os dados do software',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),

                CustomTextFormField(
                  controller: _nomeController,
                  labelText: 'Nome do Software',
                  prefixIcon: Icons.title,
                  validator: (value) => (value == null || value.isEmpty) ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 16),

                CustomTextFormField(
                  controller: _categoriaController,
                  labelText: 'Categoria',
                  prefixIcon: Icons.category,
                  validator: (value) => (value == null || value.isEmpty) ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 16),

                CustomTextFormField(
                  controller: _precoController,
                  labelText: 'Preço (Ex: 199.90)',
                  prefixIcon: Icons.attach_money,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  validator: (value) => (value == null || value.isEmpty) ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 16),

                CustomTextFormField(
                  controller: _logoUrlController,
                  labelText: 'Caminho do Logo (Ex: assets/images/logo.png)',
                  prefixIcon: Icons.image,
                  validator: (value) => (value == null || value.isEmpty) ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 16),

                // Campo de descrição não é o nosso widget customizado
                // por ser multi-linha.
                TextFormField(
                  controller: _descricaoController,
                  decoration: const InputDecoration(
                    labelText: 'Descrição',
                    border: OutlineInputBorder(),
                    alignLabelWithHint: true,
                  ),
                  maxLines: 4,
                  validator: (value) => (value == null || value.isEmpty) ? 'Campo obrigatório' : null,
                ),
                const SizedBox(height: 32),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Software cadastrado! (Simulação)')),
                      );
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Salvar Software'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
