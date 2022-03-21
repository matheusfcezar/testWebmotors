class HomeScreen
  def initialize
    @titulo_lista_veiculos = "//android.widget.TextView[@text='Carros']"
    @imagem_veiculo = "imgCar"
    @preco_veiculo = "tvValue"
    @nome_veiculo = "tvValue"
    @ano_veiculo = "tvYearKm"
  end

  def wait_for(seconds)
    Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
  end

  def home_screen
    find_element(xpath: "//android.widget.TextView[@text='Carros']").displayed?
  end

  def img_veiculo(index)
    find_elements(id: @imagem_veiculo)[index].displayed?
  end

  def preco_veiculo(index)
    find_elements(id: @preco_veiculo)[index].displayed?
  end

  def nome_veiculo(index)
    find_elements(id: @nome_veiculo)[index].displayed?
  end

  def ano_veiculo
    find_element(id: @ano_veiculo).displayed?
  end
end