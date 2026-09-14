import 'package:flutter/material.dart';

import '../models/OrdemServico.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final TextEditingController clienteController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final TextEditingController valorController = TextEditingController();

  @override
  void dispose() {
    clienteController.dispose();
    numeroController.dispose();
    valorController.dispose();

    super.dispose();
  }

  void cadastrar() {
    String cliente = clienteController.text;

    int? numero = int.tryParse(
      numeroController.text,
    );

    double? valor = double.tryParse(
      valorController.text.replaceAll(',', '.'),
    );

    if (cliente.isEmpty || numero == null || valor == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Preencha os campos corretamente.'),
        ),
      );

      return;
    }

    OrdemServico novaOrdem = OrdemServico(
      cliente: cliente,
      numero: numero,
      valor: valor,
      dataEntrada: DateTime.now(),
      concluida: false,
    );

    Navigator.of(context).pop(novaOrdem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Ordem de Serviço'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            TextFormField(
              controller: clienteController,
              decoration: InputDecoration(
                labelText: 'Cliente',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 16),

            TextFormField(
              controller: numeroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Número da OS',
                prefixIcon: const Icon(Icons.numbers),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 16),

            TextFormField(
              controller: valorController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: InputDecoration(
                labelText: 'Valor',
                prefixIcon: const Icon(Icons.attach_money),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: cadastrar,
              child: const Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}