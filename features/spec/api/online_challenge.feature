#language: pt

@api
Funcionalidade: Validar API WebMotors - Teste

  @make
  Cenário: Consultar serviço de marcas sem filtro
    Dado que eu quero consultar as marcas de veiculos
    Quando realizar uma requisição para consultar as marcas de veiculos
    Entao devo visualizar uma lista de marca disponivel
      | Name      |
      | Chevrolet |
      | Honda     |
      | Ford      |

  @model
  Esquema do Cenário: Consultar serviço modelo
    Dado que eu quero consultar os modelos pela marca
    Quando realizar uma requisição com o <id> da marca
    Entao devo visualizar o modelo de acordo com a marca informada
      | Name  |
      | City  |
      | CRV   |
      | Fit   |
    Exemplos:
      | id    |
      | '2'   |
     
 
  @version
  Esquema do Cenário: Consultar versão do modelo
    Dado que eu quero consultar a versão de modelo
    Quando realizar uma requisição com o <id> da modelo
    Entao devo visualiar a versao de acordo com o modelo informado
      | Name                           |
      | 1.5 DX 16V FLEX 4P AUTOMÁTICO  |
    Exemplos:
      | id    |
      | '2'   |

  @vehicles
  Esquema do Cenário: Consultar informações do veiculo pelo modelo
    Dado que eu quero consultar a veiculo pelo modelo
    Quando realizar uma requisição com o <id> da modelo
    Entao devo visualiar o veiculo de acordo com o modelo informado
      | Make  | Model      | Version                           | 
      | Ford  | Ecosport   | 1.6 FREESTYLE 16V FLEX 4P MANUAL  | 
    Exemplos:
      | id    |
      | '3'   |