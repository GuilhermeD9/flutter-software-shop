import 'package:flutter/material.dart';

class MenuOptionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const MenuOptionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, size: 30),
          title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Text(subtitle),
          onTap: onTap,
          trailing: const Icon(Icons.chevron_right),
        ),
        const Divider(height: 1, indent: 16, endIndent: 16),
      ],
    );
  }
}