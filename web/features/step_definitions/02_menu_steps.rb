#Acessar Opção Pessoa Fisica.

Quando('acesso a opção Pra Você') do
    @menu_page.acessar_para_voce
end

Então('sou direcionado para a tela de cliente pessoa física.') do
    expect(@menu_page.on_painel?).to be true
end

#Fim do Acesso Pessoa Fisica. 