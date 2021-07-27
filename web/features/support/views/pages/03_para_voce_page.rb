class VocePage
  include Capybara::DSL

  #Por se tratar de um teste sem robustez, não separei por "element". E também fica mais facil para leitura, mas em uma situação real não faria assim. 

  #DADO
  def tipos_de_cartoes cartao
    $qual_cartao = cartao
    find(:xpath, "//span[contains(.,'#{$qual_cartao}')]").click
  end

  #QUANDO
  def opcao_utilizar_vr onde_usar_vr
    find(:xpath, "//a[contains(.,'#{onde_usar_vr}')]").click
  end

  def cidade_tipo_cartao cidade
    find("#endereco").click.send_keys cidade, ",", :space
    find('.box-icon__search').click
    find(".autocomplete-item:nth-child(1) > .autocomplete-text").click
  end
  
  def selecionar_cartao_mapa
    find('#buttonFiltrar').click
    if $qual_cartao == 'Alimentação'
      sleep 2
      find(".vr-form__radio:nth-child(1) > .vr-map__card--title").click
    else 
      sleep 2
      find(:xpath, "//label[contains(.,'#{$qual_cartao}')]").click
    end
      #Confirma cartão.
      find('#buttonFiltrarCards').click
      #Realiza a busca.
      find('#buscarResultados').click
  end

  #ENTÃO
  def on_resultados?
    return page.has_css?(".box-result-estab")
  end

  def on_mapa?
    return page.has_css?('#map')
  end

  def on_lista?
    return find("#list-estab").text
  end
  
end
