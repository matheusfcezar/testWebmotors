Dado('que eu acesso a aplicação') do
  home_screen.wait_for(10) { find_element(xpath: "//android.widget.TextView[@text='Carros']").displayed? }
  expect(home_screen.home_screen).to be true
end

Entao('devo visualizar uma lista de veiculos') do
  expect(home_screen.img_veiculo(1)).to be true
  expect(home_screen.preco_veiculo(1)).to be true
  expect(home_screen.nome_veiculo(1)).to be true
  expect(home_screen.ano_veiculo).to be true
end
