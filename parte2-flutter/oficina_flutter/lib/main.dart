import 'package:flutter/material.dart';

import 'models/OrdemServico.dart';
import 'models/Oficina.dart';
import 'screens/home_page.dart';

const Color grafiteOficina = Color(0xFF23272F);
const Color laranjaOficina = Color(0xFFE86A17);
const Color ambarOficina = Color(0xFFF2A900);
const Color fundoOficina = Color(0xFFF1F2F4);

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

  final ColorScheme esquemaDeCores =
      ColorScheme.fromSeed(
        seedColor: laranjaOficina,
        brightness: Brightness.light,
      ).copyWith(
        primary: laranjaOficina,
        onPrimary: Colors.white,
        secondary: ambarOficina,
        onSecondary: grafiteOficina,
        surface: Colors.white,
        onSurface: grafiteOficina,
      );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: esquemaDeCores,
        scaffoldBackgroundColor: fundoOficina,
        appBarTheme: const AppBarTheme(
          backgroundColor: grafiteOficina,
          foregroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: laranjaOficina,
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          prefixIconColor: laranjaOficina,
          labelStyle: const TextStyle(color: grafiteOficina),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFAEB3BA)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: laranjaOficina, width: 2),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: laranjaOficina,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: grafiteOficina,
          contentTextStyle: TextStyle(color: Colors.white),
        ),
      ),
      home: HomePage(oficina: oficina),
    ),
  );
}
