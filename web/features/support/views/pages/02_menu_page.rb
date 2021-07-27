class MenuPage
    include Capybara::DSL
  
    def acessar_para_voce
        find("body > main > nav > ul > li:nth-child(3) > a").click
    end

    def on_painel?
        return page.has_css?(".vr-panel")
    end
    
end
  