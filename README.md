# 🏍️ AlugaMe - Aplicativo de Locação de Motos

> Um protótipo de aplicativo mobile para uma locadora de motocicletas, desenvolvido em Flutter como parte de um projeto acadêmico.

## 📋 Sobre o Projeto

`AlugaMe` é um aplicativo mobile que simula as principais funcionalidades de um serviço de locação de veículos, com foco em motocicletas. O projeto foi desenvolvido para cumprir os requisitos da disciplina de [Programação para Dispositivos Móveis], demonstrando a aplicação de conceitos de desenvolvimento mobile utilizando o framework Flutter.

O app permite que os usuários se cadastrem, façam login, visualizem o catálogo de motos disponíveis, gerenciem suas reservas e configurem seu perfil.

---

## ✨ Funcionalidades Principais

- **Autenticação de Usuário:** Telas completas de Login e Cadastro com validação de formulário.
- **Navegação Principal:** Uso de `BottomNavigationBar` para uma navegação fluida entre as seções principais.
- **Catálogo de Veículos:** Tela de listagem com todas as motos disponíveis para locação, exibindo detalhes como modelo, preço e imagem.
- **Gerenciamento de Reservas:** Área para o usuário visualizar as motos que já foram reservadas.
- **Perfil e Configurações:** Uma área centralizada para o usuário:
  - Editar suas informações pessoais (nome, CNH, telefone).
  - Acessar a tela de cadastro de novos veículos (simulando uma visão de administrador).
  - Visualizar as unidades da locadora em um mapa estático.
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
   git clone [https://github.com/](https://github.com/GuilhermeD9/flutter-app-e01.git
   ```

2. **Acesse a pasta do projeto:**
   ```bash
   cd flutter-app-e01
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
├── models/           # Classes de modelo (Moto, Usuario, etc.)
├── screens/          # Widgets que representam cada tela do app
│   ├── login_screen.dart
│   ├── home_screen.dart
│   └── ...
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
