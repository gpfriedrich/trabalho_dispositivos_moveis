import 'package:flutter/material.dart';

import '../models/Oficina.dart';
import '../models/OrdemServico.dart';
import '../widgets/ordem_servico_card.dart';
import 'cadastro_page.dart';
import 'detalhes_page.dart';

class HomePage extends StatefulWidget {
  final Oficina oficina;

  const HomePage({
    super.key,
    required this.oficina,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Oficina oficina;

  @override
  void initState() {
    super.initState();

    oficina = widget.oficina;
  }

  Future<void> abrirCadastro() async {
    OrdemServico? novaOrdem =
        await Navigator.of(context).push<OrdemServico>(
      MaterialPageRoute(
        builder: (context) => const CadastroPage(),
      ),
    );

    if (novaOrdem != null) {
      setState(() {
        oficina.adicionar(novaOrdem);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: Text(oficina.nome),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Total: R\$ ${oficina.valorTotal.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: oficina.ordens.length,

                itemBuilder: (context, index) {
                  OrdemServico ordem = oficina.ordens[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetalhePage(
                            ordem: ordem,
                          ),
                        ),
                      );
                    },

                    child: OrdemServicoCard(
                      ordem: ordem,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: abrirCadastro,
        child: const Icon(Icons.add),
      ),
    );
  }
}