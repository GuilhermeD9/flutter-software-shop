import 'package:flutter/material.dart';
import 'package:memobile/widgets/menu_option_tile.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Conta'),
      ),
      body: ListView(
        children: [
          MenuOptionTile(
            title: 'Editar Perfil',
            subtitle: 'Altere suas informações de empresa',
            icon: Icons.person_outline,
            onTap: () {
              Navigator.pushNamed(context, '/edit-profile');
            },
          ),
          MenuOptionTile(
            title: 'Cadastrar Novo Software',
            subtitle: 'Adicione um novo item ao catálogo',
            icon: Icons.add_business_outlined,
            onTap: () {
              Navigator.pushNamed(context, '/register-software');
            },
          ),
          MenuOptionTile(
            title: 'Sobre a equipe',
            subtitle: 'Conheça os criadores do projeto',
            icon: Icons.people_outline,
            onTap: () {
              Navigator.pushNamed(context, '/about-crew');
            },
          ),
          MenuOptionTile(
            title: 'Sobre o App',
            subtitle: 'Saiba mais sobre o VendasSoftware',
            icon: Icons.info_outline,
            onTap: () {
              Navigator.pushNamed(context, '/about-app');
            },
          ),

          SwitchListTile(
            title: const Text('Receber notificações'),
            value: _notificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
            secondary: const Icon(Icons.notifications_outlined),
          ),
          const Divider(),

          SwitchListTile(
            title: const Text('Modo Escuro'),
            value: _darkModeEnabled,
            onChanged: (bool value) {
              setState(() {
                _darkModeEnabled = value;
              });
            },
            secondary: const Icon(Icons.dark_mode_outlined),
          ),

          ListTile(
            leading: Icon(Icons.logout, color: Colors.red[700]),
            title: Text('Sair', style: TextStyle(color: Colors.red[700])),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
            },
          )
        ],
      ),
    );
  }
}