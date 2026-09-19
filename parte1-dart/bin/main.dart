import 'models/OrdemServico.dart';
import 'models/OrdemRevisao.dart';
import 'models/Oficina.dart';

void main() {
  //1

  OrdemServico ordem = OrdemServico(
    cliente: 'Guilherme Friedrich',
    numero: 1,
    valor: 540.00,
    dataEntrada: DateTime(2026, 9, 11),
    concluida: true,
  );

  print('===== [1] ENTIDADE PRINCIPAL =====');
  print(
    '#${ordem.numero} | '
    'Cliente: ${ordem.cliente} | '
    'R\$ ${ordem.valor.toStringAsFixed(2)} | '
    '${ordem.dataEntrada.day}/${ordem.dataEntrada.month}/${ordem.dataEntrada.year} | '
    'Concluído: ${ordem.concluida ? 'Sim' : 'Não'}',
  );

  print('');

  //2

  OrdemServico ordemComum = OrdemServico(
    cliente: 'Riquelme Reis',
    numero: 2,
    valor: 600.00,
    dataEntrada: DateTime(2026, 9, 12),
  );

  OrdemRevisao ordemRevisao = OrdemRevisao(
    cliente: 'Rodrigo Tunin',
    numero: 3,
    valor: 1500.00,
    dataEntrada: DateTime(2026, 9, 12),
    tipoRevisao: 'Revisao Completa',
    quilometragem: 85000,
  );

  print('===== [2] HERANÇA =====');
  print(ordemComum.ficha());
  print(ordemRevisao.ficha());

  //3

  Oficina oficina = Oficina(nome: 'Custela Motors');

  oficina.adicionar(ordem);
  oficina.adicionar(ordemComum);
  oficina.adicionar(ordemRevisao);

  print('');
  print('===== [3] COMPOSIÇÃO =====');

  print(
    'Oficina "${oficina.nome}" contém ${oficina.ordens.length} ordens de serviço:',
  );

  for (OrdemServico ordemServico in oficina.ordens) {
    print('#${ordemServico.numero} - ${ordemServico.cliente}');
  }

  //4

  print('');

  print('===== [4] ENCAPSULAMENTO =====');

  OrdemServico novaOrdem = OrdemServico(
    cliente: 'Arthur Huss',
    numero: 4,
    valor: 2200.00,
    dataEntrada: DateTime(2026, 9, 18),
  );

  print(
    'Oficina "${oficina.nome}" -> valor total das ordens: '
    'R\$ ${oficina.valorTotal.toStringAsFixed(2)}',
  );

  oficina.adicionar(novaOrdem);

  print(
    'Após adicionar #${novaOrdem.numero} '
    '(R\$ ${novaOrdem.valor.toStringAsFixed(2)}): '
    'R\$ ${oficina.valorTotal.toStringAsFixed(2)}',
  );
}
