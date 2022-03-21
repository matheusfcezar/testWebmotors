class DetalhesScreen
  def initialize
    @imagem_veiculo = 'imgCar'
    @modelo_veiculo = 'tvCarName'
    @descricao_veiculo = 'tvCarDesc'
    @preco_veiculo = 'tvValue'
    @ano_veiculo = 'tvYearValue'
    @km_veiculo = 'tvKmValue'
    @cor_veiculo = 'tvColorValue'
  end

  def scroll_by_text(value)
    find_element(:uiautomator, "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().text(\"#{value}\"))")
  end
  
  def img_veiculo
    find_element(id: @img_veiculo)
  end
  
  def nome_veiculo
    find_element(id: @modelo_veiculo).text
  end
  
  def descricao_veiculo
    find_element(id: @descricao_veiculo).text
  end

  def preco_veiculo
    find_element(id: @preco_veiculo).text
  end

  def ano_veiculo
    find_element(id: @ano_veiculo).text
  end

  def km_veiculo
    find_element(id: @km_veiculo).text
  end

  def cor_veiculo
    find_element(id: @cor_veiculo).text
  end
end