import 'models/OrdemServico.dart';

void main() {

  OrdemServico ordem = OrdemServico(cliente: 'Guilherme Friedrich', 
  numero: 10, 
  valor: 540.00, 
  dataEntrada: DateTime(2026, 9, 11), 
  concluida: true);

  print('===== [1] ENTIDADE PRINCIPAL =====');
  print(
    '#${ordem.numero} | '
    'Cliente: ${ordem.cliente} | '
    'R\$ ${ordem.valor.toStringAsFixed(2)} | '
    '${ordem.dataEntrada.day}/${ordem.dataEntrada.month}/${ordem.dataEntrada.year} | '
    'Concluído: ${ordem.concluida ? 'Sim' : 'Não'}',
  );


}

