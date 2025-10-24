import 'package:flutter/material.dart';
import 'package:memobile/models/membro_equipe_model.dart';
import 'package:memobile/screens/membro_detalhes_screen.dart';

class AboutCrewScreen extends StatelessWidget {
  const AboutCrewScreen({super.key});

  final List<MembroEquipe> equipe = const [
    MembroEquipe(
      nome: 'Austin Farias',
      cursoPeriodo: 'Análise e Desenvolvimento de Sistemas - 5º Período',
      contribuicao: 'Responsável pela organização e estruturação da documentação do projeto, garantindo clareza e padronização técnica.',
      bio: 'Apaixonado por tecnologia e metodologias ágeis, Austin atua com foco em qualidade e documentação de software.',
      fotoUrl: 'assets/images/osten.jpeg',
    ),
    MembroEquipe(
      nome: 'Antony Rafael',
      cursoPeriodo: 'Análise e Desenvolvimento de Sistemas - 5º Período',
      contribuicao: 'Desenvolvimento da aplicação mobile em Flutter, com foco em usabilidade e organização.',
      bio: 'Desenvolvedor criativo, interessado em design de interfaces e boas práticas de experiência do usuário (UX/UI).',
      fotoUrl: 'assets/images/rafa.jpg',
    ),
    MembroEquipe(
      nome: 'Guilherme Silva',
      cursoPeriodo: 'Análise e Desenvolvimento de Sistemas - 5º Período',
      contribuicao: 'Atuou no desenvolvimento das telas e componentes do app, contribuindo com o design e navegação do usuário.',
      bio: 'Entusiasta de desenvolvimento mobile e backend, Antony busca soluções práticas e eficientes em seus projetos.',
      fotoUrl: 'assets/images/gui.jpeg',
    ),
    MembroEquipe(
      nome: 'Matheus Souza',
      cursoPeriodo: 'Análise e Desenvolvimento de Sistemas - 5º Período',
      contribuicao: 'Responsável pelo planejamento e organização da documentação técnica e funcional do projeto.',
      bio: 'Organizado e detalhista, Matheus é dedicado à clareza e consistência nos processos de desenvolvimento.',
      fotoUrl: 'assets/images/matheus.jpg',
    ),
    MembroEquipe(
      nome: 'Marcos Guilherme',
      cursoPeriodo: 'Análise e Desenvolvimento de Sistemas - 5º Período',
      contribuicao: 'Atuou no desenvolvimento da aplicação e testes de integração, garantindo estabilidade e performance.',
      bio: 'Com interesse em automação e infraestrutura, Marcos busca sempre melhorar a eficiência e qualidade dos sistemas.',
      fotoUrl: 'assets/images/prefeito.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nossa Equipe'),
      ),
      body: ListView.builder(
        itemCount: equipe.length,
        itemBuilder: (context, index) {
          final membro = equipe[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(membro.fotoUrl),
                ),
              title: Text(membro.nome, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(membro.cursoPeriodo),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => MembroDetalhesScreen(membro: membro),
                  ),
                );
              }
            ),
          );
        },
      ),
    );
  }
}