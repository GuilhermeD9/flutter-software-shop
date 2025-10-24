import 'package:flutter/material.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre o App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Column(
                  children: [
                    Text(
                      'SoftwareBuy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 42,
                        fontFamily: 'Audiowide',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Image(
                      image: AssetImage('assets/images/software_logo_principal.png'),
                      height: 150,
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),

              const Text(
                '💻 O que é o SoftwareBuy?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'O SoftwareBuy é um aplicativo desenvolvido para facilitar a compra de sistemas empresariais de forma rápida, prática e segura. '
                    'A plataforma conecta desenvolvedores de software que desejam comercializar suas soluções com empresas que buscam tecnologia para otimizar sua gestão.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const SizedBox(height: 20),
              const Text(
                '⚙️ Como funciona?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '• Se você é um desenvolvedor ou empresa de software, pode cadastrar seu sistema facilmente no aplicativo, definindo informações como categoria, preço e funcionalidades.\n\n'
                    '• Se sua empresa busca uma solução tecnológica, basta navegar pelo catálogo, escolher o sistema que deseja e realizar a compra da licença diretamente pelo app.\n\n'
                    'O sistema foi pensado para garantir praticidade, transparência e segurança nas transações, unindo tecnologia e gestão empresarial em um só lugar.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const SizedBox(height: 20),
              const Text(
                '🚀 Nosso objetivo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Promover o acesso facilitado à transformação digital, ajudando tanto quem deseja vender suas soluções de TI quanto quem precisa de uma ferramenta para otimizar seus processos. '
                    'O VendasSoftware busca ser um marketplace centralizado de soluções B2B (Business-to-Business).',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const SizedBox(height: 40),
              const Center(
                child: Text(
                  'Versão 1.0.0',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
