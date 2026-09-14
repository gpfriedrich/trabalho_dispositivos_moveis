import 'package:flutter/material.dart';

import '../models/OrdemServico.dart';

class DetalhePage extends StatelessWidget {
  final OrdemServico ordem;

  const DetalhePage({
    super.key,
    required this.ordem,
  });

  @override
  Widget build(BuildContext context) {
    String dia = ordem.dataEntrada.day.toString().padLeft(2, '0');
    String mes = ordem.dataEntrada.month.toString().padLeft(2, '0');
    String ano = ordem.dataEntrada.year.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('OS #${ordem.numero}'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cliente: ${ordem.cliente}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            Text(
              'Valor: R\$ ${ordem.valor.toStringAsFixed(2)}',
            ),

            const SizedBox(height: 12),

            Text(
              'Data de entrada: $dia/$mes/$ano',
            ),

            const SizedBox(height: 12),

            Text(
              'Status: ${ordem.concluida ? 'Concluída' : 'Em andamento'}',
            ),
          ],
        ),
      ),
    );
  }
}