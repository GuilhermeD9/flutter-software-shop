# 💻 SoftwareBuy - Plataforma de Venda de Softwares

> Um protótipo de aplicativo mobile para um marketplace de sistemas empresariais (B2B), desenvolvido em Flutter.

## 📋 Sobre o Projeto

O `SoftwareBuy` é um aplicativo mobile que simula as principais funcionalidades de um marketplace focado em sistemas empresariais. O projeto foi desenvolvido para cumprir os requisitos da disciplina de **Governança de TI e Gestão de Projetos**, demonstrando a aplicação de conceitos de desenvolvimento mobile, componentização e arquitetura de app.

O app permite que os usuários (empresas) se cadastrem, façam login, visualizem o catálogo de softwares disponíveis, gerenciem suas licenças adquiridas e configurem sua conta.

---

## ✨ Funcionalidades Principais

- **Autenticação de Usuário:** Telas completas de Login e Cadastro com validação de formulário (utilizando widgets customizados).
- **Navegação Principal:** Uso de `BottomNavigationBar` para uma navegação fluida entre as seções principais ("Catálogo", "Minhas Licenças", "Minha Conta").
- **Catálogo de Softwares:** Tela de listagem com todos os softwares disponíveis para compra, exibindo categoria, preço e logo (utilizando um widget `SoftwareCard` customizado).
- **Gerenciamento de Licenças:** Área para o usuário visualizar os softwares que sua empresa já adquiriu.
- **Minha Conta (Configurações):** Uma área centralizada para o usuário:
  - Editar suas informações de perfil/empresa.
  - Acessar a tela de cadastro de novos softwares (simulando uma visão de administrador).
  - Visualizar as telas de "Sobre a Equipe" e "Sobre o App".
  - Realizar o logout de forma segura.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas

Este projeto foi construído utilizando as seguintes tecnologias:

- **[Flutter](https://flutter.dev/):** Framework principal para o desenvolvimento da interface e lógica do app.
- **[Dart](https://dart.dev/):** Linguagem de programação utilizada pelo Flutter.
- **[Android Studio](https://developer.android.com/studio):** IDE utilizada para o desenvolvimento e depuração.
- **[Markdown](https://www.markdownguide.org/):** Para a criação desta documentação.

---

## 🚀 Como Executar o Projeto

Para rodar este projeto localmente, siga os passos abaixo.

### Pré-requisitos

- É necessário ter o [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado na sua máquina.
- Um emulador Android (configurado via Android Studio) ou um dispositivo físico.

### Passo a Passo

1. **Clone o repositório:**
   ```bash
   git clone [COLE O LINK DO SEU NOVO REPOSITÓRIO AQUI]
   ```

2. **Acesse a pasta do projeto:**
   ```bash
   cd [NOME-DA-PASTA-DO-SEU-PROJETO]
   ```

3. **Instale as dependências:**
   ```bash
   flutter pub get
   ```

4. **Execute o aplicativo:**
   ```bash
   flutter run
   ```

---

## 📂 Estrutura de Pastas

O projeto foi organizado com uma estrutura de pastas clara para facilitar a manutenção e escalabilidade:

```
lib/
├── main.dart         # Ponto de entrada da aplicação e configuração das rotas
├── models/           # Classes de modelo (Software, Usuario, MembroEquipe, etc.)
├── screens/          # Widgets que representam cada tela do app
│   ├── login_screen.dart
│   ├── home_screen.dart
│   └── ...
└── widgets/          # Widgets reutilizáveis (SoftwareCard, CustomTextFormField, etc.)
```

---

## 👨‍💻 Autor

Desenvolvido pelos amigos:
**[Guilherme Silva](https://github.com/GuilhermeD9)**,
**[Marcos Guilherme](https://github.com/MGuilherme22)**,
**[Antony Rafael](https://github.com/rafaelsouzapinto)**,
---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
