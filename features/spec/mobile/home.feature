#language: pt

@mobile
Funcionalidade: Validar Lista de veículos
  @listagem
  Cenário: Validar lista de veículos
    Dado que eu acesso a aplicação
    Entao devo visualizar uma lista de veiculos

  @detalhes
  Esquema do Cenário: Validar informações de um veiculo
    Dado que eu acesso a aplicação
    Quando buscar um <veiculo>
    Entao devo validar as informações  de <modelo>, <descricao>, <valor>, <ano>, <km> e <cor>
      Exemplos:
        | veiculo    | modelo            | descricao                                 | valor          | ano         | km        | cor        | 
        | 'Fit'      | 'Honda Fit'       | '1.4 LXL 16V FLEX 4P AUTOMÁTICO'          | 'R$ 78.000,00' | '2018/2018' | '0KM'     | 'Preto'    |
        | 'Agile'    | 'Chevrolet Agile' | '1.4 MPFI EFFECT 8V FLEX 4P AUTOMATIZADO' | 'R$ 37.000,00' | '2013/2014' | '12000KM' | 'Vermelho' |
        | 'Ecosport' | 'Ford Ecosport'   | '1.6 FREESTYLE 16V FLEX 4P MANUAL'        | 'R$ 45.000,00' | '2012/2013' | '93000KM' | 'Branca'   |
