class ContatoPage < SitePrism::Page
    
    element :nome, :id, "input_comp-kwz6tqej"
    element :email, :css, "#input_comp-kwz6tqf7"
    element :telefone, :id, "input_comp-kwz6tqfe"
    element :desafio, :css, "#textarea_comp-kwz6tqfr"
    element :checkbox, :id, "comp-kwz6tqgp"
    element :botaoEnviar, :id, "comp-kwz6tqhd"
    element :botaorobo, :css, "#recaptcha-anchor > div.recaptcha-checkbox-checkmark"
    
    def preencher
        nome.set("guilherme soares")
        email.set("dexter342@gmail.com")
        telefone.set("22981248202")
        desafio.set("Teste realizado com sucesso")
        checkbox.click
    end
    def clicar
        botaoEnviar.click
    end 
    def robo
        switch_to_window(windows.last)
        botaorobo.click
    end       
end
