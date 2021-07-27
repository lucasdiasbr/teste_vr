#Painel relativo as rede credenciadas dos cartões VR.

Dado('que vou consultar a rede credenciada do meu cartão {string}') do |cartao|
  @voce_page.tipos_de_cartoes cartao
end

Quando('seleciono a opção {string}') do |onde_usar_vr|
  @voce_page.opcao_utilizar_vr onde_usar_vr
end

Quando('informo a cidade {string}') do |cidade| 
  @voce_page.cidade_tipo_cartao cidade
  @voce_page.selecionar_cartao_mapa
end

Então('o sistema informa quais são os estabelecimentos aceitos na região') do
  expect(@voce_page.on_resultados?).to be true
  expect(@voce_page.on_mapa?).to be true
end

Então('retorna como o primeiro registro {string}.') do |primeiro_registro|
  expect(@voce_page.on_lista?).to have_content primeiro_registro
end