# frozen_string_literal: true

Dado('que eu quero consultar as marcas de veiculos') do
  online_challenge.consulta_make
end

Quando('realizar uma requisição para consultar as marcas de veiculos') do
  @retorno = online_challenge.realizar_busca
end

Entao('devo visualizar uma lista de marca disponivel') do |table|
  @data = table.hashes
  expect(@retorno.code).to eql(200)
  expect(@retorno.parsed_response[0]).to include(@data[0])
  expect(@retorno.parsed_response[1]).to include(@data[1])
  expect(@retorno.parsed_response[2]).to include(@data[2])
end


Dado('que eu quero consultar os modelos pela marca') do
  online_challenge.consulta_model
end

Quando('realizar uma requisição com o {string} da marca') do |marca|
  @retorno_marca = online_challenge.consulta_por_id(marca)
end

Entao('devo visualizar o modelo de acordo com a marca informada') do |table|
  @data = table.hashes
  expect(@retorno_marca.code).to eql(200)
  expect(@retorno_marca.parsed_response[0]).to include(@data[0])
  expect(@retorno_marca.parsed_response[1]).to include(@data[1])
  expect(@retorno_marca.parsed_response[2]).to include(@data[2])
end

Dado('que eu quero consultar a versão de modelo') do
  online_challenge.consulta_versao
end

Quando('realizar uma requisição com o {string} da modelo') do |modelo|
  @retorno_modelo = online_challenge.consulta_por_id(modelo)
  puts  @retorno_modelo
end

Entao('devo visualiar a versao de acordo com o modelo informado') do |table|
  @data = table.hashes
  expect(@retorno_modelo.code).to eql(200)
  expect(@retorno_modelo.parsed_response[0]).to include(@data[0])
end

Dado('que eu quero consultar a veiculo pelo modelo') do
  online_challenge.consulta_veiculo
end

Entao('devo visualiar o veiculo de acordo com o modelo informado') do |table|
  @data = table.hashes
  puts @data[0]
  expect(@retorno_modelo.code).to eql(200)
  expect(@retorno_modelo.parsed_response[0]).to include(@data[0])
end
