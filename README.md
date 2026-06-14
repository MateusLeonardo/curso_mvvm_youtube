# Curso de MVVM no Flutter

Repositório de acompanhamento do curso **Curso de MVVM no Flutter**, ministrado por [Paulo Mendes](https://www.youtube.com/@PauloMendes) no YouTube.

O projeto implementa a arquitetura recomendada pelo time do Flutter, baseada no [Compass App](https://github.com/flutter/samples/tree/main/compass_app) — com separação clara entre camadas de UI e dados, uso de ViewModels e Repositories.

## Playlist

Acompanhe as aulas na playlist oficial:

**[Curso de MVVM no FLUTTER — YouTube](https://www.youtube.com/playlist?list=PLrEFUA8G5LyX2XDjU2sKXe1Q5HRozEH92)**

## Sobre o projeto

Aplicação Flutter que evolui ao longo do curso, aplicando o padrão **MVVM** (*Model-View-ViewModel*) com as práticas sugeridas pela documentação oficial do Flutter:

- **View** — widgets que descrevem a interface (`widgets/`)
- **ViewModel** — lógica de apresentação e estado da tela (`view_models/`)
- **Model / Data** — repositórios e serviços que acessam fontes de dados (`repositories/`, `services/`)

A API utilizada nas aulas é a [DummyJSON](https://dummyjson.com), consumida via [Dio](https://pub.dev/packages/dio).

## Estrutura de pastas

```
lib/
├── data/
│   ├── repositories/
│   │   └── auth/              # Contrato e implementação do repositório de autenticação
│   └── services/
│       └── api/               # Cliente HTTP e modelos de request/response
├── ui/
│   └── auth/
│       └── login/
│           ├── view_models/   # LoginViewmodel
│           └── widgets/       # LoginScreen, LoginFormWidget
├── utils/
│   └── result.dart            # Tipo Result para tratamento de sucesso/erro
└── main.dart
```

## Tecnologias

| Tecnologia | Uso |
|---|---|
| [Flutter](https://flutter.dev) | Framework de UI multiplataforma |
| [Dart](https://dart.dev) | Linguagem (SDK ^3.12) |
| [Dio](https://pub.dev/packages/dio) | Cliente HTTP para chamadas à API |

## Pré-requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado e configurado
- Um editor (VS Code, Android Studio ou Cursor)
- Emulador ou dispositivo físico para executar o app

## Como executar

```bash
# Instalar dependências
flutter pub get

# Executar o app
flutter run
```

Para listar dispositivos disponíveis:

```bash
flutter devices
```

## Arquitetura

O fluxo de dados segue o padrão unidirecional recomendado pelo Flutter:

```
UI (Widget) → ViewModel → Repository → Service (API)
```

1. O **widget** dispara ações do usuário e observa o estado exposto pelo ViewModel.
2. O **ViewModel** orquestra a lógica de apresentação e delega operações de dados ao Repository.
3. O **Repository** abstrai a origem dos dados (remoto, local, mock) através de uma interface.
4. O **Service** realiza as chamadas HTTP e serializa os modelos.

Essa organização facilita testes, substituição de implementações (ex.: `AuthRepositoryRemote` por um mock) e manutenção conforme o app cresce.

## Referências

- [Playlist do curso no YouTube](https://www.youtube.com/playlist?list=PLrEFUA8G5LyX2XDjU2sKXe1Q5HRozEH92)
- [Arquitetura recomendada pelo Flutter](https://docs.flutter.dev/app-architecture)
- [Compass App (sample oficial)](https://github.com/flutter/samples/tree/main/compass_app)
- [DummyJSON — API de testes](https://dummyjson.com)

## Licença

Este repositório é material de estudo pessoal. O conteúdo do curso pertence ao canal [Paulo Mendes](https://www.youtube.com/@PauloMendes).
