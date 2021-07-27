#language: pt

#Para os cenários listados abaixo, poderia fazer também por esquema de cenário. Por fim avaliativo, fiz de forma mais extensa para melhor compreenção dos(as) avaliadores(as). 
#Fico feliz de partcipar do processo seletivo com vcs, estou disposto a aprender e a escultar possíveis pontos de melhorias.
#Não quis adicionar muitos comentários, pois meu intuito é que o código fique de fácil compreenção e vcs então o que quis passar. 

@VR_Pessoa_Fisica
Funcionalidade: Onde usar o meu VR - Pessoa Física
    
     Sendo um cliente Pessoa Fisica
     Quero consultar a rede de credenciada de todos os meus cartões VR
     Para me informar quais são os estabelecimentos aceitos.

    Contexto: Acessar Funcionalidade - Pra Você
         Dado que acesso a página principal da VR
         Quando acesso a opção Pra Você
         Então sou direcionado para a tela de cliente pessoa física.
@CT_Consulta_Refeicao
     Cenário: Onde usar meu VR - Refeição
          Dado que vou consultar a rede credenciada do meu cartão 'Refeição'
          Quando seleciono a opção 'Onde usar meu VR Refeição?'
          E informo a cidade 'Brasília'
          Então o sistema informa quais são os estabelecimentos aceitos na região
          E retorna como o primeiro registro 'PICANHA GRILL'.
@CT_Consulta_Alimentação
     Cenário: Onde usar meu VR - Alimentação
          Dado que vou consultar a rede credenciada do meu cartão 'Alimentação'
          Quando seleciono a opção 'Onde usar meu VR Alimentação?'
          E informo a cidade 'Brasília'
          Então o sistema informa quais são os estabelecimentos aceitos na região
          E retorna como o primeiro registro 'BETH LANCHES LTDA'.
@CT_Consulta_Auto
     Cenário: Onde usar meu VR - Auto
          Dado que vou consultar a rede credenciada do meu cartão 'Auto'
          Quando seleciono a opção 'Onde usar o meu VR Auto?'
          E informo a cidade 'Brasília'
          Então o sistema informa quais são os estabelecimentos aceitos na região
          E retorna como o primeiro registro 'POSTO DISBRAVE IMPERIAL'.
@CT_Consulta_Cultura
     Cenário: Onde usar meu VR - Cultura
          Dado que vou consultar a rede credenciada do meu cartão 'Cultura'
          Quando seleciono a opção 'Onde usar meu VR Cultura?'
          E informo a cidade 'Brasília'
          Então o sistema informa quais são os estabelecimentos aceitos na região
          E retorna como o primeiro registro 'INTRAPAY'.