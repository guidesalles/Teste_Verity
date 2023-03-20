# encoding: utf-8

Dado('o usuario acesse o site da Verity em {string}') do |url|
    visit url
  end
  
  Quando('eu clico no menu {string} e na sessão {string}') do |menu, sessao|
    find('a', text: menu).click
  
  end
  
  E('preencho o formulário com os seguintes dados:') do |table|
    dados = table.rows_hash
    fill_in 'nome', with: dados['Nome']
    fill_in 'email', with: dados['Email']
    fill_in 'telefone', with: dados['Telefone / Celular']
    fill_in 'mensagem', with: dados['Nos conte o seu desafio']
    check 'aceito-receber-mensagens'
  end
  
  E('clico no botão {string}') do |botao|
    click_button botao
  end
  
  Então('eu devo ver a mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
  end