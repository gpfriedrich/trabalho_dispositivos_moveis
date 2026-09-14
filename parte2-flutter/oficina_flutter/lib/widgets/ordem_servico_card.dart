import 'package:flutter/material.dart';

import '../models/OrdemServico.dart';

class OrdemServicoCard extends StatelessWidget {
  final OrdemServico ordem;

  const OrdemServicoCard({
    super.key,
    required this.ordem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'OS #${ordem.numero}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Cliente: ${ordem.cliente}',
          ),

          const SizedBox(height: 4),

          Text(
            'Valor: R\$ ${ordem.valor.toStringAsFixed(2)}',
          ),
        ],
      ),
    );
  }
}