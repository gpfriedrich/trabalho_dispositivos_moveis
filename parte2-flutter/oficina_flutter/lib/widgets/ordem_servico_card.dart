import 'package:flutter/material.dart';

import '../models/OrdemServico.dart';

class OrdemServicoCard extends StatelessWidget {
  final OrdemServico ordem;

  const OrdemServicoCard({super.key, required this.ordem});

  @override
  Widget build(BuildContext context) {
    ColorScheme cores = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: cores.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: cores.primary.withValues(alpha: 0.24)),
        boxShadow: [
          BoxShadow(
            color: cores.shadow.withValues(alpha: 0.15),
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
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: cores.onSurface,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Cliente: ${ordem.cliente}',
            style: TextStyle(color: cores.onSurfaceVariant),
          ),

          const SizedBox(height: 4),

          Text(
            'Valor: R\$ ${ordem.valor.toStringAsFixed(2)}',
            style: TextStyle(color: cores.primary, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
