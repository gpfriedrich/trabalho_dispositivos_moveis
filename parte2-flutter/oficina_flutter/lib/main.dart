import 'package:flutter/material.dart';

import 'models/OrdemServico.dart';
import 'models/Oficina.dart';
import 'screens/home_page.dart';

void main() {
  Oficina oficina = Oficina(
    nome: 'Custela Motors',
    ordens: [
      OrdemServico(
        cliente: 'João da Silva',
        numero: 101,
        valor: 850.00,
        dataEntrada: DateTime(2026, 9, 10),
      ),
      OrdemServico(
        cliente: 'Carlos Souza',
        numero: 102,
        valor: 500.00,
        dataEntrada: DateTime(2026, 9, 11),
      ),
      OrdemServico(
        cliente: 'Maria Oliveira',
        numero: 103,
        valor: 1200.00,
        dataEntrada: DateTime(2026, 9, 12),
      ),
      OrdemServico(
        cliente: 'Pedro Santos',
        numero: 104,
        valor: 450.00,
        dataEntrada: DateTime(2026, 9, 13),
      ),
      OrdemServico(
        cliente: 'Ana Pereira',
        numero: 105,
        valor: 700.00,
        dataEntrada: DateTime(2026, 9, 14),
      ),
      OrdemServico(
        cliente: 'Lucas Ferreira',
        numero: 106,
        valor: 950.00,
        dataEntrada: DateTime(2026, 9, 15),
      ),
    ],
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(oficina: oficina),
    ),
  );
}