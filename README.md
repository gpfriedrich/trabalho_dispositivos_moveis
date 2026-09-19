# Trabalho do 1º Bimestre — Programação para Dispositivos Móveis

**Tema:** gestão de ordens de serviço de uma oficina automotiva. `OrdemServico` representa cada atendimento individual, enquanto `Oficina` agrupa e gerencia várias ordens de serviço.

## Integrante

- Guilherme Friedrich

## Domínio

O sistema representa a oficina **Custela Motors** e suas ordens de serviço. Cada ordem registra o cliente, o número da OS, o valor do serviço, a data de entrada e o estado de conclusão.

`OrdemRevisao` é uma especialização de `OrdemServico`. Ela mantém os dados da ordem comum e acrescenta o tipo de revisão e a quilometragem do veículo.

### Por que a relação é composição?

A relação entre `Oficina` e `OrdemServico` é de composição porque uma oficina **tem várias** ordens de serviço, armazenadas em uma `List<OrdemServico>`. Uma oficina não é um tipo de ordem de serviço; portanto, essa relação não deve ser representada por herança.

## Organização do repositório

```text
trab_bim/
├── README.md
├── parte1-dart/
│   ├── pubspec.yaml
│   └── bin/
│       ├── main.dart
│       └── models/
└── parte2-flutter/
    ├── pubspec.yaml
    └── lib/
        ├── main.dart
        ├── models/
        ├── screens/
        └── widgets/
```

## Como executar

### Parte 1 — Dart

```bash
cd parte1-dart
dart pub get
dart analyze
dart run bin/main.dart
```

O programa imprime no terminal um relatório com quatro blocos numerados: entidade principal, herança, composição e encapsulamento.

### Parte 2 — Flutter

```bash
cd parte2-flutter
flutter pub get
flutter analyze
flutter devices
flutter run -d chrome
```

O aplicativo abre diretamente na lista com seis ordens de serviço. É possível consultar os detalhes de uma ordem e cadastrar uma nova, atualizando a lista e o valor total sem reiniciar o aplicativo.

## Tabela de rastreio

| # | Exercício | Arquivo e linha | O que aparece na tela |
|---:|---|---|---|
| 1 | Entidade principal | [`parte1-dart/bin/models/OrdemServico.dart:9`](parte1-dart/bin/models/OrdemServico.dart#L9) | Bloco `[1] ENTIDADE PRINCIPAL` do relatório, com os dados de uma ordem de serviço. |
| 2 | Herança | [`parte1-dart/bin/models/OrdemRevisao.dart:3`](parte1-dart/bin/models/OrdemRevisao.dart#L3) e [`:19`](parte1-dart/bin/models/OrdemRevisao.dart#L19) | Bloco `[2] HERANÇA`, comparando a saída de `ficha()` em uma ordem comum e em uma ordem de revisão. |
| 3 | Composição | [`parte1-dart/bin/models/Oficina.dart:5`](parte1-dart/bin/models/Oficina.dart#L5) e [`:12`](parte1-dart/bin/models/Oficina.dart#L12) | Bloco `[3] COMPOSIÇÃO`, com a quantidade de ordens e cada item em uma linha. |
| 4 | Encapsulamento | [`parte1-dart/bin/models/Oficina.dart:20`](parte1-dart/bin/models/Oficina.dart#L20) | Bloco `[4] ENCAPSULAMENTO`, com o valor total antes e depois de adicionar uma ordem; o mesmo total aparece no topo da lista do aplicativo. |
| 5 | Estrutura de tela | [`parte2-flutter/lib/screens/home_page.dart:42`](parte2-flutter/lib/screens/home_page.dart#L42) | Tela inicial com `AppBar`, total das ordens no topo e lista no corpo. |
| 6 | Cartão | [`parte2-flutter/lib/widgets/ordem_servico_card.dart:14`](parte2-flutter/lib/widgets/ordem_servico_card.dart#L14) | Cada ordem aparece em um cartão com fundo, bordas arredondadas e sombra. |
| 7 | Lista | [`parte2-flutter/lib/screens/home_page.dart:65`](parte2-flutter/lib/screens/home_page.dart#L65) | Lista rolável construída com `ListView.builder`, iniciada com seis ordens. |
| 8 | Navegação | [`parte2-flutter/lib/screens/home_page.dart:73`](parte2-flutter/lib/screens/home_page.dart#L73) | Ao tocar em uma ordem, a tela de detalhes exibe o objeto selecionado, incluindo data de entrada e status. |
| 9 | Formulário | [`parte2-flutter/lib/screens/cadastro_page.dart:13`](parte2-flutter/lib/screens/cadastro_page.dart#L13) e [`:70`](parte2-flutter/lib/screens/cadastro_page.dart#L70) | Tela de cadastro com os campos cliente, número da OS e valor, além do botão **Confirmar**. |
| 10 | Estado | [`parte2-flutter/lib/screens/home_page.dart:9`](parte2-flutter/lib/screens/home_page.dart#L9) e [`:34`](parte2-flutter/lib/screens/home_page.dart#L34) | Depois da confirmação, a nova ordem aparece na lista e o valor total é recalculado. |
