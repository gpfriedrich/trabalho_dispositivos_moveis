class OrdemServico{

  String cliente;
  int numero;
  double valor;
  DateTime dataEntrada;
  bool concluida;

  OrdemServico({

    required this.cliente,
    required this.numero,
    required this.valor,
    required this.dataEntrada,
    this.concluida = false,

  });

  String ficha() {
    return '#$numero | Cliente: $cliente | R\$ ${valor.toStringAsFixed(2)}';
  }

}