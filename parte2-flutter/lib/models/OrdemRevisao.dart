import 'OrdemServico.dart';

class OrdemRevisao extends OrdemServico{

  String tipoRevisao;
  int quilometragem;

  OrdemRevisao({
    
    required super.cliente,
    required super.numero,
    required super.valor,
    required super.dataEntrada,
    super.concluida,
    required this.tipoRevisao,
    required this.quilometragem,
  });

  @override
  String ficha() {
    return '${super.ficha()} | Revisão: $tipoRevisao | Quilometragem: $quilometragem km';
  }

}