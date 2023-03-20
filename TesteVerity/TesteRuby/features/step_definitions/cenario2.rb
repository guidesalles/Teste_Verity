# encoding: utf-8

Dado('o usuario acesse o site da Verity em {string}') do |url|
    visit url
  end
  
  Quando('eu clico no menu {string} e na sessão {string}') do |menu, sessao|
    find('a', text: menu).click
  
  end
  
  E('preencho o formulário com os seguintes dados') do
    @formulario = ContatoPage.new
    @formulario.preencher
    
  end
  
  E('clico no botão Enviar') do 
   @formulario.clicar
   @formulario.robo
  end
  
  Então('eu devo ver a mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
  end