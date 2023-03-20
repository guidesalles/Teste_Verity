# encoding: utf-8

Dado('que eu acesse o site da Verity em {string}') do |url|
    visit url
  end
  
  Quando('a pagina estiver aberta') do
    sleep 1
  end

  Então('eu devo ver o título {string} na página') do |titulo|
    expect(page).to have_content(titulo)
  end

  
