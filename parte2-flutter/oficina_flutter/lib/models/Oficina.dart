import 'OrdemServico.dart';

class Oficina {
    String nome;
    final List<OrdemServico> _ordens;

    Oficina({
      required this.nome,
      List<OrdemServico>? ordens,
    }) : _ordens = ordens ?? [];

    void adicionar(OrdemServico ordem) {
      _ordens.add(ordem);
    }

    List<OrdemServico> get ordens {
      return List.unmodifiable(_ordens);
    }

    double get valorTotal {
      double total = 0;

      for (OrdemServico ordem in _ordens) {
        total += ordem.valor;
      }

      return total;
    }
  }