Quando('buscar um {string}') do |veiculo|
  detalhes_screen.scroll_by_text(veiculo).click
end

Entao('devo validar as informações  de {string}, {string}, {string}, {string}, {string} e {string}') do |modelo, descricao, valor, ano, km, cor|
  home_screen.wait_for(10) { find_element(xpath: "//android.widget.TextView[@text='Detalhes do Carro']").displayed? }
    
  expect(detalhes_screen.nome_veiculo).to eq(modelo)
  expect(detalhes_screen.descricao_veiculo).to eq(descricao)
  expect(detalhes_screen.preco_veiculo.to_f).to eq(valor.to_f)
  expect(detalhes_screen.ano_veiculo).to eq(ano)
  expect(detalhes_screen.km_veiculo).to eq(km)
  expect(detalhes_screen.cor_veiculo).to eq(cor)
end
