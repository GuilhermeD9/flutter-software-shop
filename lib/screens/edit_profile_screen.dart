import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memobile/models/usuario_model.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EdicaoPerfilScreenState();
}

class _EdicaoPerfilScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  final _usuarioAtual = Usuario(
    id: 'user1',
    nome: 'Manoel Tsé',
    email: 'mantes22@email.com',
    telefone: '(75) 23421-3333',
    numeroCNH: '8847588937',
  );

  late TextEditingController _nomeController;
  late TextEditingController _telefoneController;
  late TextEditingController _cnhController;

  @override
  void initState() {
    super.initState();
    _nomeController = TextEditingController(text: _usuarioAtual.nome);
    _telefoneController = TextEditingController(text: _usuarioAtual.telefone);
    _cnhController = TextEditingController(text: _usuarioAtual.numeroCNH);
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _telefoneController.dispose();
    _cnhController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Perfil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _nomeController,
                    decoration: const InputDecoration(labelText: 'Nome Completo', border: OutlineInputBorder()),
                    validator: (value) => (value == null || value.isEmpty) ? 'O nome é obrigatório.' : null,
                  ),
                  const SizedBox(height: 16),

                  TextFormField(
                    controller: _telefoneController,
                    decoration: const InputDecoration(labelText: 'Telefone/Celular', border: OutlineInputBorder()),
                    keyboardType: TextInputType.phone,
                    validator: (value) => (value == null || value.isEmpty) ? 'O telefone é obrigatório.' : null,
                  ),
                  const SizedBox(height: 16),

                  TextFormField(
                    controller: _cnhController,
                    decoration: const InputDecoration(labelText: 'Número da CNH', border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    validator: (value) => (value == null || value.isEmpty) ? 'O número da CNH é obrigatório.' : null,
                  ),
                  const SizedBox(height: 16),

                  TextFormField(
                    initialValue: _usuarioAtual.email,
                    enabled: false,
                    decoration: InputDecoration(
                        labelText: 'E-mail (não pode ser alterado)',
                        border: const OutlineInputBorder(),
                        fillColor: Colors.grey[200],
                        filled: true,
                    ),
                  ),
                  const SizedBox(height: 32),
                  
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _usuarioAtual.nome = _nomeController.text;
                          _usuarioAtual.telefone = _telefoneController.text;
                          _usuarioAtual.numeroCNH = _cnhController.text;
                          
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Perfil atualizado com sucesso!')),
                          );
                          Navigator.pop(context);
                        }
                      },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text('Salvar Alterações', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
          ),
        ),
      ),
    );
  }
}