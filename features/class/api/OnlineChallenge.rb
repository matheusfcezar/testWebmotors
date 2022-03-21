# frozen_string_literal: true

require_relative "#{Dir.pwd}/features/support/carregar_arquivo.rb"
require_relative 'classe_comum'

class OnlineChallenge < ClasseComum
  include CarregarArquivo
  def consulta_make
    $url_busca = construir_url('make') 
  end

  def consulta_model
    $url_busca = construir_url('model')
  end

  def consulta_versao
    $url_busca = construir_url('version')
  end

  def consulta_veiculo
    $url_busca = construir_url('vehicle')
  end

  def realizar_busca
    construir_envio($url_busca)
  end
  
  def consulta_por_id(model)
    $url_busca = $url_busca.gsub('{id_model}', model.to_s)
    retorno = construir_envio($url_busca)
  end

end
